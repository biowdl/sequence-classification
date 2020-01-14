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

workflow Pipeline {
    input {
        File sampleConfigFile
        String outputDirectory = "."
        File dockerImagesFile
        Boolean runMultiQC = if (outputDirectory == ".") then false else true
    }

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
        call sampleWorkflow.SampleWorkflow as executeSampleWorkflow {
            input:
                sample = sample,
                outputDirectory = outputDirectory + "/" + sample.id,
                dockerImages = dockerImages
        }
    }

    if (runMultiQC) {
        call multiqc.MultiQC as multiqcTask {
            input:
                finished = executeSampleWorkflow.finished,
                dependencies = [],
                outDir = outputDirectory + "/multiqc",
                analysisDirectory = outputDirectory,
                dockerImage = dockerImages["multiqc"]
        }
    }

    output {
        Array[File] outputQCreports = flatten(executeSampleWorkflow.qcReports)
        Array[File] outputCentrifugeMetrics = executeSampleWorkflow.outputCentrifugeMetrics
        Array[File] outputCentrifugeClassification = executeSampleWorkflow.outputCentrifugeClassification
        Array[File] outputCentrifugeReport = executeSampleWorkflow.outputCentrifugeReport
        File? outputMultiQCreport = multiqcTask.multiqcReport
    }
}
