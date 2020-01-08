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

workflow SampleWorkflow {
    input {
        Sample sample
        String outputDirectory = "."
        Map[String, String] dockerImages
    }

    Array[Readgroup] readgroups = sample.readgroups

    scatter (readgroup in readgroups) {
        String readgroupName = "~{sample.id}-~{readgroup.lib_id}-~{readgroup.id}"
        String readgroupIdentifier = readgroup.lib_id + "-" + readgroup.id

        call qc.QC as qualityControl {
            input:
                read1 = readgroup.R1,
                read2 = readgroup.R2,
                readgroupName = readgroupName,
                outputDir = outputDir + "/" + readgroupIdentifier,
                dockerImages = dockerImages
        }

    Array[Array[File]] allMetrics = [flatten(qc.reports)]

    output {
        Array[File] metricsFiles = flatten(allMetrics)
    }
}
