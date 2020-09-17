---
layout: default
title: Home
---

This pipeline uses centrifuge for microbial classification and enables rapid,
accurate, and sensitive labeling of reads and quantification of species.

This pipeline is part of [BioWDL](https://biowdl.github.io/)
developed by the SASC team
at [Leiden University Medical Center](https://www.lumc.nl/).

## Usage
You can run this pipeline using
[Cromwell](http://cromwell.readthedocs.io/en/stable/):

First download the latest version of the pipeline wdl file(s) and 
from the
[releases page](https://github.com/biowdl/sequence-classification/releases).

```bash
java \
    -jar cromwell-<version>.jar \
    run \
    -o options.json \
    -i inputs.json \
    sequence-classification.wdl
```

Where `options.json` contains the following json:
```json
{
    "final_workflow_log_dir": "/path/to/logs/folder"
}
```

### Inputs
Inputs are provided through a JSON file. The minimally required inputs are
described below, but additional inputs are available.
A template containing all possible inputs can be generated using
Womtool as described in the
[WOMtool documentation](http://cromwell.readthedocs.io/en/stable/WOMtool/).
For an overview of all available inputs, see [this page](./inputs.html).

```json
{
    "Classification.sampleConfigFile": "A sample configuration file (see below).",
    "Classification.outputDirectory": "The path to the output directory.",
    "Classification.dockerImagesFile": "A file listing the used docker images.",
    "Classification.sampleWorkflow.centrifugeIndex": "The files of the centrifuge index for the reference genomes.",
    "Classification.runQc": "Based on the input files (fastq/fasta), run the QC pipeline."
}
```

#### Sample configuration
##### Verification
All samplesheet formats can be verified using `biowdl-input-converter`. 
It can be installed with `pip install biowdl-input-converter` or 
`conda install biowdl-input-converter` (from the bioconda channel). 
Python 3.7 or higher is required.

With `biowdl-input-converter --validate samplesheet.csv` The file
"samplesheet.csv" will be checked. Also the presence of all files in
the samplesheet will be checked to ensure no typos were made. For more
information check out the [biowdl-input-converter readthedocs page](
https://biowdl-input-converter.readthedocs.io).

##### CSV format
The sample configuration can be given as a csv file with the following 
columns: sample, library, readgroup, R1, R1_md5, R2, R2_md5.

column name | function
---|---
sample | sample ID
library | library ID. These are the libraries that are sequenced. Usually there is only one library per sample.
readgroup | readgroup ID. Usually a library is sequenced on multiple lanes in the sequencer, which gives multiple fastq files (referred to as readgroups). Each readgroup pair should have an ID.
R1| The fastq file containing the first reads of the read pairs.
R1_md5 | Optional: md5sum for the R1 file.
R2| Optional: The fastq file containing the reverse reads.
R2_md5| Optional: md5sum for the R2 file.

The easiest way to create a samplesheet is to use a spreadsheet program
such as LibreOffice Calc or Microsoft Excel, and create a table:

sample | library | read | R1 | R1_md5 | R2 | R2_md5
-------|---------|------|----|--------|----|-------
Sample1|lib1|rg1|tests/data/norovirus.paired.end.1.R1.fastq.gz|1ff9f164f633933046b725ed7116354c|tests/data/norovirus.pairedEnd.1.R2.fastq.gz|f18ae76ff14b557ea4b0fc6a787b5d12
Sample2|lib1|rg1|tests/data/norovirus.paired.end.2.R1.fastq.gz|8d8d01381a35787711ee47bf7dde55b0|tests/data/norovirus.pairedEnd.2.R2.fastq.gz|a829f3334994bbd0411dbebe6ac62223

NOTE: R1_md5, R2 and R2_md5 are optional do not have to be filled. And
additional fields may be added (eg. for documentation purposes), these will be
ignored by the pipeline.

After creating the table in a spreadsheet program it can be saved in 
csv format.

#### Example
The following is an example of what an inputs JSON might look like:

```json
{
    "Classification.sampleConfigFile": "tests/samplesheets/paired.end.csv",
    "Classification.dockerImagesFile": "dockerImages.yml",
    "Classification.sampleWorkflow.centrifugeIndex": [
        "tests/data/index/norovirus.1.cf",
        "tests/data/index/norovirus.2.cf",
        "tests/data/index/norovirus.3.cf",
        "tests/data/index/norovirus.4.cf"
    ],
    "Classification.outputDirectory": "tests/test-output",
    "Classification.runQc": true
}
```

### Dependency requirements and tool versions
Biowdl pipelines use docker images to ensure  reproducibility. This
means that biowdl pipelines will run on any system that has docker
installed. Alternatively they can be run with singularity.

For more advanced configuration of docker or singularity please check
the [cromwell documentation on containers](
https://cromwell.readthedocs.io/en/stable/tutorials/Containers/).

Images from [biocontainers](https://biocontainers.pro) are preferred for
biowdl pipelines. The list of default images for this pipeline can be
found in the default for the `dockerImages` input.

### Output
The workflow will output trimmed reads from the QC pipeline, a centrifuge
classification file, a alignment metrics file, a report file per sample and
a krona plot per sample.

## Contact
<p>
  <!-- Obscure e-mail address for spammers -->
For any questions about running this pipeline and feature request (such as
adding additional tools and options), please use the
<a href='https://github.com/biowdl/sequence-classification/issues'>github issue tracker</a>
or contact the SASC team directly at: 
<a href='&#109;&#97;&#105;&#108;&#116;&#111;&#58;&#115;&#97;&#115;&#99;&#64;&#108;&#117;&#109;&#99;&#46;&#110;&#108;'>
&#115;&#97;&#115;&#99;&#64;&#108;&#117;&#109;&#99;&#46;&#110;&#108;</a>.
</p>
