version 1.0

# Copyright (c) 2020 Sequencing Analysis Support Core - Leiden University Medical Center
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

import "sample.wdl" as sampleWorkflow
import "structs.wdl" as structs
import "tasks/biowdl.wdl" as biowdl
import "tasks/common.wdl" as common
import "tasks/multiqc.wdl" as multiqc

workflow Classification {
    input {
        File sampleConfigFile
        String outputDirectory = "."
        File dockerImagesFile
    }

    meta {allowNestedInputs: true}

    call common.YamlToJson as convertDockerImagesFile {
        input:
            yaml = dockerImagesFile,
            outputJson = outputDirectory + "/dockerImages.json"
    }

    Map[String, String] dockerImages = read_json(convertDockerImagesFile.json)

    call biowdl.InputConverter as convertSampleConfig {
        input:
            samplesheet = sampleConfigFile,
            outputFile = outputDirectory + "/samplesheet.json",
            dockerImage = dockerImages["biowdl-input-converter"]
    }

    SampleConfig sampleConfig = read_json(convertSampleConfig.json)
    Array[Sample] allSamples = sampleConfig.samples

    scatter (sample in allSamples) {
        call sampleWorkflow.SampleWorkflow as sampleWorkflow {
            input:
                sample = sample,
                outputDirectory = outputDirectory + "/" + sample.id,
                dockerImages = dockerImages
        }
    }

    call multiqc.MultiQC as multiqcTask {
        input:
            reports = flatten(sampleWorkflow.qcReports),
            outDir = outputDirectory + "/multiqc",
            dataDir = true,
            dockerImage = dockerImages["multiqc"]
    }

    output {
        Array[File] outputQCreports = flatten(sampleWorkflow.qcReports)
        Array[File] outputCentrifugeMetrics = sampleWorkflow.centrifugeMetrics
        Array[File] outputCentrifugeClassification = sampleWorkflow.centrifugeClassification
        Array[File] outputCentrifugeReport = sampleWorkflow.centrifugeReport
        Array[File] outputcentrifugeKreport = sampleWorkflow.centrifugeKreport
        Array[File] outputKronaPlot = sampleWorkflow.kronaPlot
        File outputMultiqcReport = multiqcTask.multiqcReport
        File? outputMultiqcReportZip = multiqcTask.multiqcDataDirZip
    }

    parameter_meta {
        # inputs
        sampleConfigFile: {description: "Samplesheet describing input fasta/fastq files.", category: "required"}
        outputDirectory: {description: "The directory to which the outputs will be written.", category: "common"}
        dockerImagesFile: {description: "The docker image used for this workflow. Changing this may result in errors which the developers may choose not to address.", category: "required"}

        # outputs
        outputQCreports: {description: "The QC workflow output files."}
        outputCentrifugeMetrics: {description: "File with Centrifuge metrics."}
        outputCentrifugeClassification: {description: "File with the classification results."}
        outputCentrifugeReport: {description: "File with a classification summary."}
        outputcentrifugeKreport: {description: "File with kraken style report(s)."}
        outputKronaPlot: {description: "Krona taxonomy plot html file."}
        outputMultiqcReport: {description: "The MultiQC output file."}
        outputMultiqcReportZip: {description: "The MultiQC data zip file."}
    }
}
