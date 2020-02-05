---
layout: default
title: Home
---

This pipeline uses Centrifuge for microbial classification and enables rapid,
accurate, and sensitive labeling of reads and quantification of species.

This pipeline is part of [BioWDL](https://biowdl.github.io/)
developed by the SASC team at [Leiden University Medical Center](https://www.lumc.nl/).

## Usage
You can run the pipeline using
[Cromwell](http://cromwell.readthedocs.io/en/stable/):

```bash
java -jar cromwell-<version>.jar run -i inputs.json sequence-classification.wdl
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
    "Pipeline.sampleConfigFile": "A sample configuration file (see below).",
    "Pipeline.outputDirectory": "The path to the output directory.",
    "Pipeline.dockerImagesFile": "A file listing the used docker images.",
    "Pipeline.executeSampleWorkflow.centrifugeIndex": "The files of the Centrifuge index for the reference genomes."
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
library | library ID. These are the libraries that are sequenced. Usually there is only one library per sample
readgroup | readgroup ID. Usually a library is sequenced on multiple lanes in the sequencer, which gives multiple fastq files (referred to as readgroups). Each readgroup pair should have an ID.
R1| The fastq file containing the first reads of the read pairs.
R1_md5 | Optional: md5sum for the R1 file.
R2| Optional: The fastq file containing the reverse reads.
R2_md5| Optional: md5sum for the R2 file.

The easiest way to create a samplesheet is to use a spreadsheet program
such as LibreOffice Calc or Microsoft Excel, and create a table:

sample | library | read | R1 | R1_md5 | R2 | R2_md5
-------|---------|------|----|--------|----|-------
<sampleId>|<libId>|<rgId>|<Path to first FastQ file.>|<MD5 checksum string.>||
<sampleId>|<libId>|<rgId>|<Path to first FastQ file.>|<MD5 checksum string.>||

NOTE: R1_md5, R2 and R2_md5 are optional do not have to be filled. And additional fields may be added (eg. for documentation purposes), these will be ignored by the pipeline.

After creating the table in a spreadsheet program it can be saved in 
csv format.

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
