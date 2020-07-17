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

import "structs.wdl" as structs
import "QC/QC.wdl" as qc
import "tasks/centrifuge.wdl" as centrifuge

workflow SampleWorkflow {
    input {
        Sample sample
        Array[File]+ centrifugeIndex
        String outputDirectory = "."
        Map[String, String] dockerImages
    }

    meta {allowNestedInputs: true}

    Array[Readgroup] readgroups = sample.readgroups

    scatter (readgroup in readgroups) {
        String readgroupName = "~{sample.id}-~{readgroup.lib_id}-~{readgroup.id}"
        String readgroupIdentifier = readgroup.lib_id + "-" + readgroup.id
        call qc.QC as qualityControl {
            input:
                read1 = readgroup.R1,
                read2 = readgroup.R2,
                readgroupName = readgroupName,
                outputDir = outputDirectory + "/" + readgroupIdentifier,
                dockerImages = dockerImages
        }
    }

    call centrifuge.Classify as centrifuge {
        input:
            outputPrefix = outputDirectory + "/" + sample.id,
            indexFiles = centrifugeIndex,
            read1 = qualityControl.qcRead1,
            read2 = select_all(qualityControl.qcRead2),
            dockerImage = dockerImages["centrifuge"]
    }

    call centrifuge.Kreport as kReport {
        input:
            centrifugeClassification = centrifuge.outputClassification,
            outputPrefix = outputDirectory + "/" + sample.id,
            indexFiles = centrifugeIndex,
            dockerImage = dockerImages["centrifuge"]
    }

    call centrifuge.KTimportTaxonomy as kronaPlot {
        input:
            inputFile = centrifuge.outputClassification,
            outputPrefix = outputDirectory + "/" + sample.id,
            dockerImage = dockerImages["krona"]
    }

    output {
        Array[File] qcReports = flatten(qualityControl.reports)
        File centrifugeMetrics = centrifuge.outputMetrics
        File centrifugeClassification = centrifuge.outputClassification
        File centrifugeReport = centrifuge.outputReport
        File centrifugeKreport = kReport.outputKreport
        File kronaPlot = kronaPlot.outputKronaPlot
    }

    parameter_meta {
        # inputs
        sample: {description: "The sample data.", category: "required"}
        centrifugeIndex: {description: "The files of the index for the reference genomes.", category: "required"}
        outputDirectory: {description: "The directory to which the outputs will be written.", category: "common"}
        dockerImages: {description: "The docker image used for this workflow. Changing this may result in errors which the developers may choose not to address.", category: "advanced"}

        # outputs
        qcReports: {description: "The QC workflow output files."}
        centrifugeMetrics: {description: "File with Centrifuge metrics."}
        centrifugeClassification: {description: "File with the classification results."}
        centrifugeReport: {description: "File with a classification summary."}
        centrifugeKreport: {description: "File with kraken style report(s)."}
        kronaPlot: {description: "Krona taxonomy plot html file."}
    }
}
