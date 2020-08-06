---
layout: default
title: "Inputs: Classification"
---

# Inputs for Classification

The following is an overview of all available inputs in
Classification.


## Required inputs
<dl>
<dt id="Classification.dockerImagesFile"><a href="#Classification.dockerImagesFile">Classification.dockerImagesFile</a></dt>
<dd>
    <i>File </i><br />
    The docker image used for this workflow. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="Classification.sampleConfigFile"><a href="#Classification.sampleConfigFile">Classification.sampleConfigFile</a></dt>
<dd>
    <i>File </i><br />
    Samplesheet describing input fasta/fastq files.
</dd>
<dt id="Classification.sampleWorkflow.centrifuge.inputFormat"><a href="#Classification.sampleWorkflow.centrifuge.inputFormat">Classification.sampleWorkflow.centrifuge.inputFormat</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"fastq"</code><br />
    The format of the read file(s).
</dd>
<dt id="Classification.sampleWorkflow.centrifuge.minHitLength"><a href="#Classification.sampleWorkflow.centrifuge.minHitLength">Classification.sampleWorkflow.centrifuge.minHitLength</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>22</code><br />
    Minimum length of partial hits.
</dd>
<dt id="Classification.sampleWorkflow.centrifuge.phred64"><a href="#Classification.sampleWorkflow.centrifuge.phred64">Classification.sampleWorkflow.centrifuge.phred64</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    If set to true, phred+64 encoding is used.
</dd>
<dt id="Classification.sampleWorkflow.centrifugeIndex"><a href="#Classification.sampleWorkflow.centrifugeIndex">Classification.sampleWorkflow.centrifugeIndex</a></dt>
<dd>
    <i>Array[File]+ </i><br />
    The files of the index for the reference genomes.
</dd>
</dl>

## Other common inputs
<dl>
<dt id="Classification.outputDirectory"><a href="#Classification.outputDirectory">Classification.outputDirectory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"."</code><br />
    The directory to which the outputs will be written.
</dd>
<dt id="Classification.sampleWorkflow.centrifuge.excludeTaxIDs"><a href="#Classification.sampleWorkflow.centrifuge.excludeTaxIDs">Classification.sampleWorkflow.centrifuge.excludeTaxIDs</a></dt>
<dd>
    <i>String? </i><br />
    A comma-separated list of taxonomic IDs that will be excluded in classification procedure.
</dd>
<dt id="Classification.sampleWorkflow.centrifuge.hostTaxIDs"><a href="#Classification.sampleWorkflow.centrifuge.hostTaxIDs">Classification.sampleWorkflow.centrifuge.hostTaxIDs</a></dt>
<dd>
    <i>String? </i><br />
    A comma-separated list of taxonomic IDs that will be preferred in classification procedure.
</dd>
<dt id="Classification.sampleWorkflow.centrifuge.reportMaxDistinct"><a href="#Classification.sampleWorkflow.centrifuge.reportMaxDistinct">Classification.sampleWorkflow.centrifuge.reportMaxDistinct</a></dt>
<dd>
    <i>Int? </i><br />
    It searches for at most <int> distinct, primary assignments for each read or pair.
</dd>
<dt id="Classification.sampleWorkflow.centrifuge.trim3"><a href="#Classification.sampleWorkflow.centrifuge.trim3">Classification.sampleWorkflow.centrifuge.trim3</a></dt>
<dd>
    <i>Int? </i><br />
    Trim <int> bases from 3' (right) end of each read before alignment.
</dd>
<dt id="Classification.sampleWorkflow.centrifuge.trim5"><a href="#Classification.sampleWorkflow.centrifuge.trim5">Classification.sampleWorkflow.centrifuge.trim5</a></dt>
<dd>
    <i>Int? </i><br />
    Trim <int> bases from 5' (left) end of each read before alignment.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.adapterForward"><a href="#Classification.sampleWorkflow.qualityControl.adapterForward">Classification.sampleWorkflow.qualityControl.adapterForward</a></dt>
<dd>
    <i>String? </i><i>&mdash; Default:</i> <code>"AGATCGGAAGAG"</code><br />
    The adapter to be removed from the reads first or single end reads.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.adapterReverse"><a href="#Classification.sampleWorkflow.qualityControl.adapterReverse">Classification.sampleWorkflow.qualityControl.adapterReverse</a></dt>
<dd>
    <i>String? </i><i>&mdash; Default:</i> <code>"AGATCGGAAGAG"</code><br />
    The adapter to be removed from the reads second end reads.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.contaminations"><a href="#Classification.sampleWorkflow.qualityControl.contaminations">Classification.sampleWorkflow.qualityControl.contaminations</a></dt>
<dd>
    <i>Array[String]+? </i><br />
    Contaminants/adapters to be removed from the reads.
</dd>
</dl>

## Advanced inputs
<details>
<summary> Show/Hide </summary>
<dl>
<dt id="Classification.convertDockerImagesFile.dockerImage"><a href="#Classification.convertDockerImagesFile.dockerImage">Classification.convertDockerImagesFile.dockerImage</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"quay.io/biocontainers/biowdl-input-converter:0.2.1--py_0"</code><br />
    The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</dd>
<dt id="Classification.convertDockerImagesFile.memory"><a href="#Classification.convertDockerImagesFile.memory">Classification.convertDockerImagesFile.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"128M"</code><br />
    The maximum amount of memory the job will need.
</dd>
<dt id="Classification.convertDockerImagesFile.timeMinutes"><a href="#Classification.convertDockerImagesFile.timeMinutes">Classification.convertDockerImagesFile.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="Classification.convertSampleConfig.checkFileMd5sums"><a href="#Classification.convertSampleConfig.checkFileMd5sums">Classification.convertSampleConfig.checkFileMd5sums</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Whether or not the MD5 sums of the files mentioned in the samplesheet should be checked.
</dd>
<dt id="Classification.convertSampleConfig.old"><a href="#Classification.convertSampleConfig.old">Classification.convertSampleConfig.old</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Whether or not the old samplesheet format should be used.
</dd>
<dt id="Classification.convertSampleConfig.skipFileCheck"><a href="#Classification.convertSampleConfig.skipFileCheck">Classification.convertSampleConfig.skipFileCheck</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Whether or not the existance of the files mentioned in the samplesheet should be checked.
</dd>
<dt id="Classification.convertSampleConfig.timeMinutes"><a href="#Classification.convertSampleConfig.timeMinutes">Classification.convertSampleConfig.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="Classification.multiqcTask.clConfig"><a href="#Classification.multiqcTask.clConfig">Classification.multiqcTask.clConfig</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--cl-config` option.
</dd>
<dt id="Classification.multiqcTask.comment"><a href="#Classification.multiqcTask.comment">Classification.multiqcTask.comment</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--comment` option.
</dd>
<dt id="Classification.multiqcTask.config"><a href="#Classification.multiqcTask.config">Classification.multiqcTask.config</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to MultiQC's `--config` option.
</dd>
<dt id="Classification.multiqcTask.dataFormat"><a href="#Classification.multiqcTask.dataFormat">Classification.multiqcTask.dataFormat</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--data-format` option.
</dd>
<dt id="Classification.multiqcTask.dirs"><a href="#Classification.multiqcTask.dirs">Classification.multiqcTask.dirs</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--dirs` flag.
</dd>
<dt id="Classification.multiqcTask.dirsDepth"><a href="#Classification.multiqcTask.dirsDepth">Classification.multiqcTask.dirsDepth</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to MultiQC's `--dirs-depth` option.
</dd>
<dt id="Classification.multiqcTask.exclude"><a href="#Classification.multiqcTask.exclude">Classification.multiqcTask.exclude</a></dt>
<dd>
    <i>Array[String]+? </i><br />
    Equivalent to MultiQC's `--exclude` option.
</dd>
<dt id="Classification.multiqcTask.export"><a href="#Classification.multiqcTask.export">Classification.multiqcTask.export</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--export` flag.
</dd>
<dt id="Classification.multiqcTask.fileList"><a href="#Classification.multiqcTask.fileList">Classification.multiqcTask.fileList</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to MultiQC's `--file-list` option.
</dd>
<dt id="Classification.multiqcTask.fileName"><a href="#Classification.multiqcTask.fileName">Classification.multiqcTask.fileName</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--filename` option.
</dd>
<dt id="Classification.multiqcTask.flat"><a href="#Classification.multiqcTask.flat">Classification.multiqcTask.flat</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--flat` flag.
</dd>
<dt id="Classification.multiqcTask.force"><a href="#Classification.multiqcTask.force">Classification.multiqcTask.force</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--force` flag.
</dd>
<dt id="Classification.multiqcTask.fullNames"><a href="#Classification.multiqcTask.fullNames">Classification.multiqcTask.fullNames</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--fullnames` flag.
</dd>
<dt id="Classification.multiqcTask.ignore"><a href="#Classification.multiqcTask.ignore">Classification.multiqcTask.ignore</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--ignore` option.
</dd>
<dt id="Classification.multiqcTask.ignoreSamples"><a href="#Classification.multiqcTask.ignoreSamples">Classification.multiqcTask.ignoreSamples</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--ignore-samples` option.
</dd>
<dt id="Classification.multiqcTask.interactive"><a href="#Classification.multiqcTask.interactive">Classification.multiqcTask.interactive</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Equivalent to MultiQC's `--interactive` flag.
</dd>
<dt id="Classification.multiqcTask.lint"><a href="#Classification.multiqcTask.lint">Classification.multiqcTask.lint</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--lint` flag.
</dd>
<dt id="Classification.multiqcTask.megaQCUpload"><a href="#Classification.multiqcTask.megaQCUpload">Classification.multiqcTask.megaQCUpload</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Opposite to MultiQC's `--no-megaqc-upload` flag.
</dd>
<dt id="Classification.multiqcTask.memory"><a href="#Classification.multiqcTask.memory">Classification.multiqcTask.memory</a></dt>
<dd>
    <i>String? </i><br />
    The amount of memory this job will use.
</dd>
<dt id="Classification.multiqcTask.module"><a href="#Classification.multiqcTask.module">Classification.multiqcTask.module</a></dt>
<dd>
    <i>Array[String]+? </i><br />
    Equivalent to MultiQC's `--module` option.
</dd>
<dt id="Classification.multiqcTask.pdf"><a href="#Classification.multiqcTask.pdf">Classification.multiqcTask.pdf</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to MultiQC's `--pdf` flag.
</dd>
<dt id="Classification.multiqcTask.sampleNames"><a href="#Classification.multiqcTask.sampleNames">Classification.multiqcTask.sampleNames</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to MultiQC's `--sample-names` option.
</dd>
<dt id="Classification.multiqcTask.tag"><a href="#Classification.multiqcTask.tag">Classification.multiqcTask.tag</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--tag` option.
</dd>
<dt id="Classification.multiqcTask.template"><a href="#Classification.multiqcTask.template">Classification.multiqcTask.template</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--template` option.
</dd>
<dt id="Classification.multiqcTask.timeMinutes"><a href="#Classification.multiqcTask.timeMinutes">Classification.multiqcTask.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>2 + ceil((size(reports,"G") * 8))</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="Classification.multiqcTask.title"><a href="#Classification.multiqcTask.title">Classification.multiqcTask.title</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to MultiQC's `--title` option.
</dd>
<dt id="Classification.multiqcTask.zipDataDir"><a href="#Classification.multiqcTask.zipDataDir">Classification.multiqcTask.zipDataDir</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>true</code><br />
    Equivalent to MultiQC's `--zip-data-dir` flag.
</dd>
<dt id="Classification.sampleWorkflow.centrifuge.memory"><a href="#Classification.sampleWorkflow.centrifuge.memory">Classification.sampleWorkflow.centrifuge.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"16G"</code><br />
    The amount of memory available to the job.
</dd>
<dt id="Classification.sampleWorkflow.centrifuge.threads"><a href="#Classification.sampleWorkflow.centrifuge.threads">Classification.sampleWorkflow.centrifuge.threads</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>4</code><br />
    The number of threads to be used.
</dd>
<dt id="Classification.sampleWorkflow.kReport.isCountTable"><a href="#Classification.sampleWorkflow.kReport.isCountTable">Classification.sampleWorkflow.kReport.isCountTable</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    The format of the file is taxID<tab>COUNT.
</dd>
<dt id="Classification.sampleWorkflow.kReport.memory"><a href="#Classification.sampleWorkflow.kReport.memory">Classification.sampleWorkflow.kReport.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The amount of memory available to the job.
</dd>
<dt id="Classification.sampleWorkflow.kReport.minimumLength"><a href="#Classification.sampleWorkflow.kReport.minimumLength">Classification.sampleWorkflow.kReport.minimumLength</a></dt>
<dd>
    <i>Int? </i><br />
    Require a minimum alignment length to the read.
</dd>
<dt id="Classification.sampleWorkflow.kReport.minimumScore"><a href="#Classification.sampleWorkflow.kReport.minimumScore">Classification.sampleWorkflow.kReport.minimumScore</a></dt>
<dd>
    <i>Int? </i><br />
    Require a minimum score for reads to be counted.
</dd>
<dt id="Classification.sampleWorkflow.kReport.noLCA"><a href="#Classification.sampleWorkflow.kReport.noLCA">Classification.sampleWorkflow.kReport.noLCA</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Do not report the lca of multiple assignments, but report count fractions at the taxa.
</dd>
<dt id="Classification.sampleWorkflow.kReport.showZeros"><a href="#Classification.sampleWorkflow.kReport.showZeros">Classification.sampleWorkflow.kReport.showZeros</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Show clades that have zero reads.
</dd>
<dt id="Classification.sampleWorkflow.kReport.timeMinutes"><a href="#Classification.sampleWorkflow.kReport.timeMinutes">Classification.sampleWorkflow.kReport.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>10</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="Classification.sampleWorkflow.krona.memory"><a href="#Classification.sampleWorkflow.krona.memory">Classification.sampleWorkflow.krona.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"4G"</code><br />
    The amount of memory available to the job.
</dd>
<dt id="Classification.sampleWorkflow.krona.timeMinutes"><a href="#Classification.sampleWorkflow.krona.timeMinutes">Classification.sampleWorkflow.krona.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.bwa"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.bwa">Classification.sampleWorkflow.qualityControl.Cutadapt.bwa</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --bwa flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.colorspace"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.colorspace">Classification.sampleWorkflow.qualityControl.Cutadapt.colorspace</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --colorspace flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.compressionLevel"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.compressionLevel">Classification.sampleWorkflow.qualityControl.Cutadapt.compressionLevel</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    The compression level if gzipped output is used.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.cores"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.cores">Classification.sampleWorkflow.qualityControl.Cutadapt.cores</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>4</code><br />
    The number of cores to use.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.cut"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.cut">Classification.sampleWorkflow.qualityControl.Cutadapt.cut</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to cutadapt's --cut option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.discardTrimmed"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.discardTrimmed">Classification.sampleWorkflow.qualityControl.Cutadapt.discardTrimmed</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --quality-cutoff option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.discardUntrimmed"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.discardUntrimmed">Classification.sampleWorkflow.qualityControl.Cutadapt.discardUntrimmed</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --discard-untrimmed option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.doubleEncode"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.doubleEncode">Classification.sampleWorkflow.qualityControl.Cutadapt.doubleEncode</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --double-encode flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.errorRate"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.errorRate">Classification.sampleWorkflow.qualityControl.Cutadapt.errorRate</a></dt>
<dd>
    <i>Float? </i><br />
    Equivalent to cutadapt's --error-rate option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.front"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.front">Classification.sampleWorkflow.qualityControl.Cutadapt.front</a></dt>
<dd>
    <i>Array[String] </i><i>&mdash; Default:</i> <code>[]</code><br />
    A list of 5' ligated adapter sequences to be cut from the given first or single end fastq file.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.frontRead2"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.frontRead2">Classification.sampleWorkflow.qualityControl.Cutadapt.frontRead2</a></dt>
<dd>
    <i>Array[String] </i><i>&mdash; Default:</i> <code>[]</code><br />
    A list of 5' ligated adapter sequences to be cut from the given second end fastq file.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.infoFilePath"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.infoFilePath">Classification.sampleWorkflow.qualityControl.Cutadapt.infoFilePath</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --info-file option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.interleaved"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.interleaved">Classification.sampleWorkflow.qualityControl.Cutadapt.interleaved</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --interleaved flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.length"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.length">Classification.sampleWorkflow.qualityControl.Cutadapt.length</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to cutadapt's --length option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.lengthTag"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.lengthTag">Classification.sampleWorkflow.qualityControl.Cutadapt.lengthTag</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --length-tag option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.maq"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.maq">Classification.sampleWorkflow.qualityControl.Cutadapt.maq</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --maq flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.maskAdapter"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.maskAdapter">Classification.sampleWorkflow.qualityControl.Cutadapt.maskAdapter</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --mask-adapter flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.matchReadWildcards"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.matchReadWildcards">Classification.sampleWorkflow.qualityControl.Cutadapt.matchReadWildcards</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --match-read-wildcards flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.maximumLength"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.maximumLength">Classification.sampleWorkflow.qualityControl.Cutadapt.maximumLength</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to cutadapt's --maximum-length option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.maxN"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.maxN">Classification.sampleWorkflow.qualityControl.Cutadapt.maxN</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to cutadapt's --max-n option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.memory"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.memory">Classification.sampleWorkflow.qualityControl.Cutadapt.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"~{300 + 100 * cores}M"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.minimumLength"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.minimumLength">Classification.sampleWorkflow.qualityControl.Cutadapt.minimumLength</a></dt>
<dd>
    <i>Int? </i><i>&mdash; Default:</i> <code>2</code><br />
    Equivalent to cutadapt's --minimum-length option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.nextseqTrim"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.nextseqTrim">Classification.sampleWorkflow.qualityControl.Cutadapt.nextseqTrim</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --nextseq-trim option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.noIndels"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.noIndels">Classification.sampleWorkflow.qualityControl.Cutadapt.noIndels</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --no-indels flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.noMatchAdapterWildcards"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.noMatchAdapterWildcards">Classification.sampleWorkflow.qualityControl.Cutadapt.noMatchAdapterWildcards</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --no-match-adapter-wildcards flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.noTrim"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.noTrim">Classification.sampleWorkflow.qualityControl.Cutadapt.noTrim</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --no-trim flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.noZeroCap"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.noZeroCap">Classification.sampleWorkflow.qualityControl.Cutadapt.noZeroCap</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --no-zero-cap flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.overlap"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.overlap">Classification.sampleWorkflow.qualityControl.Cutadapt.overlap</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to cutadapt's --overlap option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.pairFilter"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.pairFilter">Classification.sampleWorkflow.qualityControl.Cutadapt.pairFilter</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --pair-filter option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.prefix"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.prefix">Classification.sampleWorkflow.qualityControl.Cutadapt.prefix</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --prefix option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.qualityBase"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.qualityBase">Classification.sampleWorkflow.qualityControl.Cutadapt.qualityBase</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to cutadapt's --quality-base option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.qualityCutoff"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.qualityCutoff">Classification.sampleWorkflow.qualityControl.Cutadapt.qualityCutoff</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --quality-cutoff option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.restFilePath"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.restFilePath">Classification.sampleWorkflow.qualityControl.Cutadapt.restFilePath</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --rest-file option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.stripF3"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.stripF3">Classification.sampleWorkflow.qualityControl.Cutadapt.stripF3</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --strip-f3 flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.stripSuffix"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.stripSuffix">Classification.sampleWorkflow.qualityControl.Cutadapt.stripSuffix</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --strip-suffix option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.suffix"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.suffix">Classification.sampleWorkflow.qualityControl.Cutadapt.suffix</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --suffix option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.timeMinutes"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.timeMinutes">Classification.sampleWorkflow.qualityControl.Cutadapt.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil((size([read1, read2],"G") * 12.0 / cores))</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.times"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.times">Classification.sampleWorkflow.qualityControl.Cutadapt.times</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to cutadapt's --times option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.tooLongOutputPath"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.tooLongOutputPath">Classification.sampleWorkflow.qualityControl.Cutadapt.tooLongOutputPath</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --too-long-output option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.tooLongPairedOutputPath"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.tooLongPairedOutputPath">Classification.sampleWorkflow.qualityControl.Cutadapt.tooLongPairedOutputPath</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --too-long-paired-output option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.tooShortOutputPath"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.tooShortOutputPath">Classification.sampleWorkflow.qualityControl.Cutadapt.tooShortOutputPath</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --too-short-output option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.tooShortPairedOutputPath"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.tooShortPairedOutputPath">Classification.sampleWorkflow.qualityControl.Cutadapt.tooShortPairedOutputPath</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --too-short-paired-output option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.trimN"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.trimN">Classification.sampleWorkflow.qualityControl.Cutadapt.trimN</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --trim-n flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.untrimmedOutputPath"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.untrimmedOutputPath">Classification.sampleWorkflow.qualityControl.Cutadapt.untrimmedOutputPath</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --untrimmed-output option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.untrimmedPairedOutputPath"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.untrimmedPairedOutputPath">Classification.sampleWorkflow.qualityControl.Cutadapt.untrimmedPairedOutputPath</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --untrimmed-paired-output option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.wildcardFilePath"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.wildcardFilePath">Classification.sampleWorkflow.qualityControl.Cutadapt.wildcardFilePath</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to cutadapt's --wildcard-file option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.Cutadapt.zeroCap"><a href="#Classification.sampleWorkflow.qualityControl.Cutadapt.zeroCap">Classification.sampleWorkflow.qualityControl.Cutadapt.zeroCap</a></dt>
<dd>
    <i>Boolean? </i><br />
    Equivalent to cutadapt's --zero-cap flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.extractFastqcZip"><a href="#Classification.sampleWorkflow.qualityControl.extractFastqcZip">Classification.sampleWorkflow.qualityControl.extractFastqcZip</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Whether to extract Fastqc's report zip files
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.adapters"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.adapters">Classification.sampleWorkflow.qualityControl.FastqcRead1.adapters</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --adapters option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.casava"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.casava">Classification.sampleWorkflow.qualityControl.FastqcRead1.casava</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --casava flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.contaminants"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.contaminants">Classification.sampleWorkflow.qualityControl.FastqcRead1.contaminants</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --contaminants option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.dir"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.dir">Classification.sampleWorkflow.qualityControl.FastqcRead1.dir</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to fastqc's --dir option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.format"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.format">Classification.sampleWorkflow.qualityControl.FastqcRead1.format</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to fastqc's --format option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.javaXmx"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.javaXmx">Classification.sampleWorkflow.qualityControl.FastqcRead1.javaXmx</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"1750M"</code><br />
    The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.kmers"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.kmers">Classification.sampleWorkflow.qualityControl.FastqcRead1.kmers</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to fastqc's --kmers option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.limits"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.limits">Classification.sampleWorkflow.qualityControl.FastqcRead1.limits</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --limits option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.memory"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.memory">Classification.sampleWorkflow.qualityControl.FastqcRead1.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"2G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.minLength"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.minLength">Classification.sampleWorkflow.qualityControl.FastqcRead1.minLength</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to fastqc's --min_length option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.nano"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.nano">Classification.sampleWorkflow.qualityControl.FastqcRead1.nano</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nano flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.noFilter"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.noFilter">Classification.sampleWorkflow.qualityControl.FastqcRead1.noFilter</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nofilter flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.nogroup"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.nogroup">Classification.sampleWorkflow.qualityControl.FastqcRead1.nogroup</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nogroup flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.threads"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.threads">Classification.sampleWorkflow.qualityControl.FastqcRead1.threads</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    The number of cores to use.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1.timeMinutes"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1.timeMinutes">Classification.sampleWorkflow.qualityControl.FastqcRead1.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil(size(seqFile,"G")) * 4</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.adapters"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.adapters">Classification.sampleWorkflow.qualityControl.FastqcRead1After.adapters</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --adapters option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.casava"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.casava">Classification.sampleWorkflow.qualityControl.FastqcRead1After.casava</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --casava flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.contaminants"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.contaminants">Classification.sampleWorkflow.qualityControl.FastqcRead1After.contaminants</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --contaminants option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.dir"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.dir">Classification.sampleWorkflow.qualityControl.FastqcRead1After.dir</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to fastqc's --dir option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.format"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.format">Classification.sampleWorkflow.qualityControl.FastqcRead1After.format</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to fastqc's --format option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.javaXmx"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.javaXmx">Classification.sampleWorkflow.qualityControl.FastqcRead1After.javaXmx</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"1750M"</code><br />
    The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.kmers"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.kmers">Classification.sampleWorkflow.qualityControl.FastqcRead1After.kmers</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to fastqc's --kmers option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.limits"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.limits">Classification.sampleWorkflow.qualityControl.FastqcRead1After.limits</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --limits option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.memory"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.memory">Classification.sampleWorkflow.qualityControl.FastqcRead1After.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"2G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.minLength"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.minLength">Classification.sampleWorkflow.qualityControl.FastqcRead1After.minLength</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to fastqc's --min_length option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.nano"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.nano">Classification.sampleWorkflow.qualityControl.FastqcRead1After.nano</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nano flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.noFilter"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.noFilter">Classification.sampleWorkflow.qualityControl.FastqcRead1After.noFilter</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nofilter flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.nogroup"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.nogroup">Classification.sampleWorkflow.qualityControl.FastqcRead1After.nogroup</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nogroup flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.threads"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.threads">Classification.sampleWorkflow.qualityControl.FastqcRead1After.threads</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    The number of cores to use.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead1After.timeMinutes"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead1After.timeMinutes">Classification.sampleWorkflow.qualityControl.FastqcRead1After.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil(size(seqFile,"G")) * 4</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.adapters"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.adapters">Classification.sampleWorkflow.qualityControl.FastqcRead2.adapters</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --adapters option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.casava"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.casava">Classification.sampleWorkflow.qualityControl.FastqcRead2.casava</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --casava flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.contaminants"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.contaminants">Classification.sampleWorkflow.qualityControl.FastqcRead2.contaminants</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --contaminants option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.dir"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.dir">Classification.sampleWorkflow.qualityControl.FastqcRead2.dir</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to fastqc's --dir option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.format"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.format">Classification.sampleWorkflow.qualityControl.FastqcRead2.format</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to fastqc's --format option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.javaXmx"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.javaXmx">Classification.sampleWorkflow.qualityControl.FastqcRead2.javaXmx</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"1750M"</code><br />
    The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.kmers"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.kmers">Classification.sampleWorkflow.qualityControl.FastqcRead2.kmers</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to fastqc's --kmers option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.limits"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.limits">Classification.sampleWorkflow.qualityControl.FastqcRead2.limits</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --limits option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.memory"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.memory">Classification.sampleWorkflow.qualityControl.FastqcRead2.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"2G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.minLength"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.minLength">Classification.sampleWorkflow.qualityControl.FastqcRead2.minLength</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to fastqc's --min_length option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.nano"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.nano">Classification.sampleWorkflow.qualityControl.FastqcRead2.nano</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nano flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.noFilter"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.noFilter">Classification.sampleWorkflow.qualityControl.FastqcRead2.noFilter</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nofilter flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.nogroup"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.nogroup">Classification.sampleWorkflow.qualityControl.FastqcRead2.nogroup</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nogroup flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.threads"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.threads">Classification.sampleWorkflow.qualityControl.FastqcRead2.threads</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    The number of cores to use.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2.timeMinutes"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2.timeMinutes">Classification.sampleWorkflow.qualityControl.FastqcRead2.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil(size(seqFile,"G")) * 4</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.adapters"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.adapters">Classification.sampleWorkflow.qualityControl.FastqcRead2After.adapters</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --adapters option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.casava"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.casava">Classification.sampleWorkflow.qualityControl.FastqcRead2After.casava</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --casava flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.contaminants"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.contaminants">Classification.sampleWorkflow.qualityControl.FastqcRead2After.contaminants</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --contaminants option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.dir"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.dir">Classification.sampleWorkflow.qualityControl.FastqcRead2After.dir</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to fastqc's --dir option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.format"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.format">Classification.sampleWorkflow.qualityControl.FastqcRead2After.format</a></dt>
<dd>
    <i>String? </i><br />
    Equivalent to fastqc's --format option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.javaXmx"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.javaXmx">Classification.sampleWorkflow.qualityControl.FastqcRead2After.javaXmx</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"1750M"</code><br />
    The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.kmers"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.kmers">Classification.sampleWorkflow.qualityControl.FastqcRead2After.kmers</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to fastqc's --kmers option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.limits"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.limits">Classification.sampleWorkflow.qualityControl.FastqcRead2After.limits</a></dt>
<dd>
    <i>File? </i><br />
    Equivalent to fastqc's --limits option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.memory"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.memory">Classification.sampleWorkflow.qualityControl.FastqcRead2After.memory</a></dt>
<dd>
    <i>String </i><i>&mdash; Default:</i> <code>"2G"</code><br />
    The amount of memory this job will use.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.minLength"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.minLength">Classification.sampleWorkflow.qualityControl.FastqcRead2After.minLength</a></dt>
<dd>
    <i>Int? </i><br />
    Equivalent to fastqc's --min_length option.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.nano"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.nano">Classification.sampleWorkflow.qualityControl.FastqcRead2After.nano</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nano flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.noFilter"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.noFilter">Classification.sampleWorkflow.qualityControl.FastqcRead2After.noFilter</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nofilter flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.nogroup"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.nogroup">Classification.sampleWorkflow.qualityControl.FastqcRead2After.nogroup</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>false</code><br />
    Equivalent to fastqc's --nogroup flag.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.threads"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.threads">Classification.sampleWorkflow.qualityControl.FastqcRead2After.threads</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1</code><br />
    The number of cores to use.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.FastqcRead2After.timeMinutes"><a href="#Classification.sampleWorkflow.qualityControl.FastqcRead2After.timeMinutes">Classification.sampleWorkflow.qualityControl.FastqcRead2After.timeMinutes</a></dt>
<dd>
    <i>Int </i><i>&mdash; Default:</i> <code>1 + ceil(size(seqFile,"G")) * 4</code><br />
    The maximum amount of time the job will run in minutes.
</dd>
<dt id="Classification.sampleWorkflow.qualityControl.runAdapterClipping"><a href="#Classification.sampleWorkflow.qualityControl.runAdapterClipping">Classification.sampleWorkflow.qualityControl.runAdapterClipping</a></dt>
<dd>
    <i>Boolean </i><i>&mdash; Default:</i> <code>defined(adapterForward) || defined(adapterReverse) || length(select_first([contaminations, []])) > 0</code><br />
    Whether or not adapters should be removed from the reads.
</dd>
</dl>
</details>





## Do not set these inputs!
The following inputs should ***not*** be set, even though womtool may
show them as being available inputs.

* Classification.sampleWorkflow.qualityControl.FastqcRead1.NoneFile
* Classification.sampleWorkflow.qualityControl.FastqcRead1.NoneArray
* Classification.sampleWorkflow.qualityControl.FastqcRead2.NoneFile
* Classification.sampleWorkflow.qualityControl.FastqcRead2.NoneArray
* Classification.sampleWorkflow.qualityControl.FastqcRead1After.NoneFile
* Classification.sampleWorkflow.qualityControl.FastqcRead1After.NoneArray
* Classification.sampleWorkflow.qualityControl.FastqcRead2After.NoneFile
* Classification.sampleWorkflow.qualityControl.FastqcRead2After.NoneArray
* Classification.multiqcTask.finished
* Classification.multiqcTask.dependencies
