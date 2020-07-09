# Classification


## Inputs


### Required inputs
<p name="Classification.dockerImagesFile">
        <b>Classification.dockerImagesFile</b><br />
        <i>File &mdash; Default: None</i><br />
        The docker image used for this workflow. Changing this may result in errors which the developers may choose not to address.
</p>
<p name="Classification.executeSampleWorkflow.centrifugeIndex">
        <b>Classification.executeSampleWorkflow.centrifugeIndex</b><br />
        <i>Array[File]+ &mdash; Default: None</i><br />
        The files of the index for the reference genomes.
</p>
<p name="Classification.executeSampleWorkflow.executeCentrifuge.inputFormat">
        <b>Classification.executeSampleWorkflow.executeCentrifuge.inputFormat</b><br />
        <i>String &mdash; Default: "fastq"</i><br />
        The format of the read file(s).
</p>
<p name="Classification.executeSampleWorkflow.executeCentrifuge.minHitLength">
        <b>Classification.executeSampleWorkflow.executeCentrifuge.minHitLength</b><br />
        <i>Int &mdash; Default: 22</i><br />
        Minimum length of partial hits.
</p>
<p name="Classification.executeSampleWorkflow.executeCentrifuge.phred64">
        <b>Classification.executeSampleWorkflow.executeCentrifuge.phred64</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        If set to true, Phred+64 encoding is used.
</p>
<p name="Classification.sampleConfigFile">
        <b>Classification.sampleConfigFile</b><br />
        <i>File &mdash; Default: None</i><br />
        Samplesheet describing input fasta/fastq files.
</p>

### Other common inputs
<p name="Classification.executeSampleWorkflow.executeCentrifuge.excludeTaxIDs">
        <b>Classification.executeSampleWorkflow.executeCentrifuge.excludeTaxIDs</b><br />
        <i>String? &mdash; Default: None</i><br />
        A comma-separated list of taxonomic IDs that will be excluded in classification procedure.
</p>
<p name="Classification.executeSampleWorkflow.executeCentrifuge.hostTaxIDs">
        <b>Classification.executeSampleWorkflow.executeCentrifuge.hostTaxIDs</b><br />
        <i>String? &mdash; Default: None</i><br />
        A comma-separated list of taxonomic IDs that will be preferred in classification procedure.
</p>
<p name="Classification.executeSampleWorkflow.executeCentrifuge.reportMaxDistinct">
        <b>Classification.executeSampleWorkflow.executeCentrifuge.reportMaxDistinct</b><br />
        <i>Int? &mdash; Default: None</i><br />
        It searches for at most <int> distinct, primary assignments for each read or pair.
</p>
<p name="Classification.executeSampleWorkflow.executeCentrifuge.trim3">
        <b>Classification.executeSampleWorkflow.executeCentrifuge.trim3</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Trim <int> bases from 3' (right) end of each read before alignment.
</p>
<p name="Classification.executeSampleWorkflow.executeCentrifuge.trim5">
        <b>Classification.executeSampleWorkflow.executeCentrifuge.trim5</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Trim <int> bases from 5' (left) end of each read before alignment.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.adapterForward">
        <b>Classification.executeSampleWorkflow.qualityControl.adapterForward</b><br />
        <i>String? &mdash; Default: "AGATCGGAAGAG"</i><br />
        The adapter to be removed from the reads first or single end reads.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.adapterReverse">
        <b>Classification.executeSampleWorkflow.qualityControl.adapterReverse</b><br />
        <i>String? &mdash; Default: "AGATCGGAAGAG"</i><br />
        The adapter to be removed from the reads second end reads.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.contaminations">
        <b>Classification.executeSampleWorkflow.qualityControl.contaminations</b><br />
        <i>Array[String]+? &mdash; Default: None</i><br />
        Contaminants/adapters to be removed from the reads.
</p>
<p name="Classification.outputDirectory">
        <b>Classification.outputDirectory</b><br />
        <i>String &mdash; Default: "."</i><br />
        The directory to which the outputs will be written.
</p>

### Advanced inputs
<details>
<summary> Show/Hide </summary>
<p name="Classification.convertDockerImagesFile.dockerImage">
        <b>Classification.convertDockerImagesFile.dockerImage</b><br />
        <i>String &mdash; Default: "quay.io/biocontainers/biowdl-input-converter:0.2.1--py_0"</i><br />
        The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</p>
<p name="Classification.convertDockerImagesFile.memory">
        <b>Classification.convertDockerImagesFile.memory</b><br />
        <i>String &mdash; Default: "128M"</i><br />
        The maximum amount of memory the job will need.
</p>
<p name="Classification.convertDockerImagesFile.timeMinutes">
        <b>Classification.convertDockerImagesFile.timeMinutes</b><br />
        <i>Int &mdash; Default: 1</i><br />
        The maximum amount of time the job will run in minutes.
</p>
<p name="Classification.convertSampleConfig.checkFileMd5sums">
        <b>Classification.convertSampleConfig.checkFileMd5sums</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Whether or not the MD5 sums of the files mentioned in the samplesheet should be checked.
</p>
<p name="Classification.convertSampleConfig.old">
        <b>Classification.convertSampleConfig.old</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Whether or not the old samplesheet format should be used.
</p>
<p name="Classification.convertSampleConfig.skipFileCheck">
        <b>Classification.convertSampleConfig.skipFileCheck</b><br />
        <i>Boolean &mdash; Default: true</i><br />
        Whether or not the existance of the files mentioned in the samplesheet should be checked.
</p>
<p name="Classification.convertSampleConfig.timeMinutes">
        <b>Classification.convertSampleConfig.timeMinutes</b><br />
        <i>Int &mdash; Default: 1</i><br />
        The maximum amount of time the job will run in minutes.
</p>
<p name="Classification.executeSampleWorkflow.executeCentrifuge.memory">
        <b>Classification.executeSampleWorkflow.executeCentrifuge.memory</b><br />
        <i>String &mdash; Default: "16G"</i><br />
        The amount of memory available to the job.
</p>
<p name="Classification.executeSampleWorkflow.executeCentrifuge.threads">
        <b>Classification.executeSampleWorkflow.executeCentrifuge.threads</b><br />
        <i>Int &mdash; Default: 4</i><br />
        The number of threads to be used.
</p>
<p name="Classification.executeSampleWorkflow.executeKreport.isCountTable">
        <b>Classification.executeSampleWorkflow.executeKreport.isCountTable</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        The format of the file is taxID<tab>COUNT.
</p>
<p name="Classification.executeSampleWorkflow.executeKreport.memory">
        <b>Classification.executeSampleWorkflow.executeKreport.memory</b><br />
        <i>String &mdash; Default: "4G"</i><br />
        The amount of memory available to the job.
</p>
<p name="Classification.executeSampleWorkflow.executeKreport.minimumLength">
        <b>Classification.executeSampleWorkflow.executeKreport.minimumLength</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Require a minimum alignment length to the read.
</p>
<p name="Classification.executeSampleWorkflow.executeKreport.minimumScore">
        <b>Classification.executeSampleWorkflow.executeKreport.minimumScore</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Require a minimum score for reads to be counted.
</p>
<p name="Classification.executeSampleWorkflow.executeKreport.noLCA">
        <b>Classification.executeSampleWorkflow.executeKreport.noLCA</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Do not report the LCA of multiple assignments, but report count fractions at the taxa.
</p>
<p name="Classification.executeSampleWorkflow.executeKreport.showZeros">
        <b>Classification.executeSampleWorkflow.executeKreport.showZeros</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Show clades that have zero reads.
</p>
<p name="Classification.executeSampleWorkflow.executeKreport.timeMinutes">
        <b>Classification.executeSampleWorkflow.executeKreport.timeMinutes</b><br />
        <i>Int &mdash; Default: 10</i><br />
        The maximum amount of time the job will run in minutes.
</p>
<p name="Classification.executeSampleWorkflow.executeKrona.memory">
        <b>Classification.executeSampleWorkflow.executeKrona.memory</b><br />
        <i>String &mdash; Default: "4G"</i><br />
        The amount of memory available to the job.
</p>
<p name="Classification.executeSampleWorkflow.executeKrona.timeMinutes">
        <b>Classification.executeSampleWorkflow.executeKrona.timeMinutes</b><br />
        <i>Int &mdash; Default: 1</i><br />
        The maximum amount of time the job will run in minutes.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.bwa">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.bwa</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --bwa flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.colorspace">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.colorspace</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --colorspace flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.compressionLevel">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.compressionLevel</b><br />
        <i>Int &mdash; Default: 1</i><br />
        The compression level if gzipped output is used.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.cores">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.cores</b><br />
        <i>Int &mdash; Default: 4</i><br />
        The number of cores to use.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.cut">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.cut</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --cut option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.discardTrimmed">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.discardTrimmed</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --quality-cutoff option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.discardUntrimmed">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.discardUntrimmed</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --discard-untrimmed option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.doubleEncode">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.doubleEncode</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --double-encode flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.errorRate">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.errorRate</b><br />
        <i>Float? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --error-rate option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.front">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.front</b><br />
        <i>Array[String] &mdash; Default: []</i><br />
        A list of 5' ligated adapter sequences to be cut from the given first or single end fastq file.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.frontRead2">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.frontRead2</b><br />
        <i>Array[String] &mdash; Default: []</i><br />
        A list of 5' ligated adapter sequences to be cut from the given second end fastq file.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.infoFilePath">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.infoFilePath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --info-file option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.interleaved">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.interleaved</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --interleaved flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.length">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.length</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --length option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.lengthTag">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.lengthTag</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --length-tag option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.maq">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.maq</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --maq flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.maskAdapter">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.maskAdapter</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --mask-adapter flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.matchReadWildcards">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.matchReadWildcards</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --match-read-wildcards flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.maximumLength">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.maximumLength</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --maximum-length option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.maxN">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.maxN</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --max-n option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.memory">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.memory</b><br />
        <i>String &mdash; Default: "~{300 + 100 * cores}M"</i><br />
        The amount of memory this job will use.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.minimumLength">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.minimumLength</b><br />
        <i>Int? &mdash; Default: 2</i><br />
        Equivalent to cutadapt's --minimum-length option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.nextseqTrim">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.nextseqTrim</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --nextseq-trim option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.noIndels">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.noIndels</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --no-indels flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.noMatchAdapterWildcards">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.noMatchAdapterWildcards</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --no-match-adapter-wildcards flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.noTrim">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.noTrim</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --no-trim flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.noZeroCap">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.noZeroCap</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --no-zero-cap flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.overlap">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.overlap</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --overlap option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.pairFilter">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.pairFilter</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --pair-filter option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.prefix">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.prefix</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --prefix option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.qualityBase">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.qualityBase</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --quality-base option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.qualityCutoff">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.qualityCutoff</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --quality-cutoff option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.restFilePath">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.restFilePath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --rest-file option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.stripF3">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.stripF3</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --strip-f3 flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.stripSuffix">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.stripSuffix</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --strip-suffix option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.suffix">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.suffix</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --suffix option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.timeMinutes">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.timeMinutes</b><br />
        <i>Int &mdash; Default: 1 + ceil((size([read1, read2],"G") * 12.0 / cores))</i><br />
        The maximum amount of time the job will run in minutes.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.times">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.times</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --times option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.tooLongOutputPath">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.tooLongOutputPath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --too-long-output option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.tooLongPairedOutputPath">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.tooLongPairedOutputPath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --too-long-paired-output option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.tooShortOutputPath">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.tooShortOutputPath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --too-short-output option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.tooShortPairedOutputPath">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.tooShortPairedOutputPath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --too-short-paired-output option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.trimN">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.trimN</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --trim-n flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.untrimmedOutputPath">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.untrimmedOutputPath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --untrimmed-output option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.untrimmedPairedOutputPath">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.untrimmedPairedOutputPath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --untrimmed-paired-output option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.wildcardFilePath">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.wildcardFilePath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --wildcard-file option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.Cutadapt.zeroCap">
        <b>Classification.executeSampleWorkflow.qualityControl.Cutadapt.zeroCap</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --zero-cap flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.extractFastqcZip">
        <b>Classification.executeSampleWorkflow.qualityControl.extractFastqcZip</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Whether to extract Fastqc's report zip files
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.adapters">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.adapters</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --adapters option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.casava">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.casava</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --casava flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.contaminants">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.contaminants</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --contaminants option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.dir">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.dir</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --dir option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.format">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.format</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --format option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.javaXmx">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.javaXmx</b><br />
        <i>String &mdash; Default: "1750M"</i><br />
        The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.kmers">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.kmers</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --kmers option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.limits">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.limits</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --limits option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.memory">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.memory</b><br />
        <i>String &mdash; Default: "2G"</i><br />
        The amount of memory this job will use.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.minLength">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.minLength</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --min_length option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.nano">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.nano</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nano flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.noFilter">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.noFilter</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nofilter flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.nogroup">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.nogroup</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nogroup flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.threads">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.threads</b><br />
        <i>Int &mdash; Default: 1</i><br />
        The number of cores to use.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1.timeMinutes">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1.timeMinutes</b><br />
        <i>Int &mdash; Default: 1 + ceil(size(seqFile,"G")) * 4</i><br />
        The maximum amount of time the job will run in minutes.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.adapters">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.adapters</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --adapters option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.casava">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.casava</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --casava flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.contaminants">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.contaminants</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --contaminants option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.dir">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.dir</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --dir option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.format">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.format</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --format option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.javaXmx">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.javaXmx</b><br />
        <i>String &mdash; Default: "1750M"</i><br />
        The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.kmers">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.kmers</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --kmers option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.limits">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.limits</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --limits option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.memory">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.memory</b><br />
        <i>String &mdash; Default: "2G"</i><br />
        The amount of memory this job will use.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.minLength">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.minLength</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --min_length option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.nano">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.nano</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nano flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.noFilter">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.noFilter</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nofilter flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.nogroup">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.nogroup</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nogroup flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.threads">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.threads</b><br />
        <i>Int &mdash; Default: 1</i><br />
        The number of cores to use.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.timeMinutes">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead1After.timeMinutes</b><br />
        <i>Int &mdash; Default: 1 + ceil(size(seqFile,"G")) * 4</i><br />
        The maximum amount of time the job will run in minutes.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.adapters">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.adapters</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --adapters option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.casava">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.casava</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --casava flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.contaminants">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.contaminants</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --contaminants option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.dir">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.dir</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --dir option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.format">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.format</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --format option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.javaXmx">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.javaXmx</b><br />
        <i>String &mdash; Default: "1750M"</i><br />
        The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.kmers">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.kmers</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --kmers option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.limits">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.limits</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --limits option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.memory">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.memory</b><br />
        <i>String &mdash; Default: "2G"</i><br />
        The amount of memory this job will use.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.minLength">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.minLength</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --min_length option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.nano">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.nano</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nano flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.noFilter">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.noFilter</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nofilter flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.nogroup">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.nogroup</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nogroup flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.threads">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.threads</b><br />
        <i>Int &mdash; Default: 1</i><br />
        The number of cores to use.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2.timeMinutes">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2.timeMinutes</b><br />
        <i>Int &mdash; Default: 1 + ceil(size(seqFile,"G")) * 4</i><br />
        The maximum amount of time the job will run in minutes.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.adapters">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.adapters</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --adapters option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.casava">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.casava</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --casava flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.contaminants">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.contaminants</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --contaminants option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.dir">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.dir</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --dir option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.format">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.format</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --format option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.javaXmx">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.javaXmx</b><br />
        <i>String &mdash; Default: "1750M"</i><br />
        The maximum memory available to the program. Should be lower than `memory` to accommodate JVM overhead.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.kmers">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.kmers</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --kmers option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.limits">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.limits</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --limits option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.memory">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.memory</b><br />
        <i>String &mdash; Default: "2G"</i><br />
        The amount of memory this job will use.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.minLength">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.minLength</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --min_length option.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.nano">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.nano</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nano flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.noFilter">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.noFilter</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nofilter flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.nogroup">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.nogroup</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nogroup flag.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.threads">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.threads</b><br />
        <i>Int &mdash; Default: 1</i><br />
        The number of cores to use.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.timeMinutes">
        <b>Classification.executeSampleWorkflow.qualityControl.FastqcRead2After.timeMinutes</b><br />
        <i>Int &mdash; Default: 1 + ceil(size(seqFile,"G")) * 4</i><br />
        The maximum amount of time the job will run in minutes.
</p>
<p name="Classification.executeSampleWorkflow.qualityControl.runAdapterClipping">
        <b>Classification.executeSampleWorkflow.qualityControl.runAdapterClipping</b><br />
        <i>Boolean &mdash; Default: defined(adapterForward) || defined(adapterReverse) || length(select_first([contaminations, []])) > 0</i><br />
        Whether or not adapters should be removed from the reads.
</p>
<p name="Classification.multiqcTask.clConfig">
        <b>Classification.multiqcTask.clConfig</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--cl-config` option.
</p>
<p name="Classification.multiqcTask.comment">
        <b>Classification.multiqcTask.comment</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--comment` option.
</p>
<p name="Classification.multiqcTask.config">
        <b>Classification.multiqcTask.config</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--config` option.
</p>
<p name="Classification.multiqcTask.dataFormat">
        <b>Classification.multiqcTask.dataFormat</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--data-format` option.
</p>
<p name="Classification.multiqcTask.dirs">
        <b>Classification.multiqcTask.dirs</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--dirs` flag.
</p>
<p name="Classification.multiqcTask.dirsDepth">
        <b>Classification.multiqcTask.dirsDepth</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--dirs-depth` option.
</p>
<p name="Classification.multiqcTask.exclude">
        <b>Classification.multiqcTask.exclude</b><br />
        <i>Array[String]+? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--exclude` option.
</p>
<p name="Classification.multiqcTask.export">
        <b>Classification.multiqcTask.export</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--export` flag.
</p>
<p name="Classification.multiqcTask.fileList">
        <b>Classification.multiqcTask.fileList</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--file-list` option.
</p>
<p name="Classification.multiqcTask.fileName">
        <b>Classification.multiqcTask.fileName</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--filename` option.
</p>
<p name="Classification.multiqcTask.flat">
        <b>Classification.multiqcTask.flat</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--flat` flag.
</p>
<p name="Classification.multiqcTask.force">
        <b>Classification.multiqcTask.force</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--force` flag.
</p>
<p name="Classification.multiqcTask.fullNames">
        <b>Classification.multiqcTask.fullNames</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--fullnames` flag.
</p>
<p name="Classification.multiqcTask.ignore">
        <b>Classification.multiqcTask.ignore</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--ignore` option.
</p>
<p name="Classification.multiqcTask.ignoreSamples">
        <b>Classification.multiqcTask.ignoreSamples</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--ignore-samples` option.
</p>
<p name="Classification.multiqcTask.interactive">
        <b>Classification.multiqcTask.interactive</b><br />
        <i>Boolean &mdash; Default: true</i><br />
        Equivalent to MultiQC's `--interactive` flag.
</p>
<p name="Classification.multiqcTask.lint">
        <b>Classification.multiqcTask.lint</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--lint` flag.
</p>
<p name="Classification.multiqcTask.megaQCUpload">
        <b>Classification.multiqcTask.megaQCUpload</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Opposite to MultiQC's `--no-megaqc-upload` flag.
</p>
<p name="Classification.multiqcTask.memory">
        <b>Classification.multiqcTask.memory</b><br />
        <i>String? &mdash; Default: None</i><br />
        The amount of memory this job will use.
</p>
<p name="Classification.multiqcTask.module">
        <b>Classification.multiqcTask.module</b><br />
        <i>Array[String]+? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--module` option.
</p>
<p name="Classification.multiqcTask.pdf">
        <b>Classification.multiqcTask.pdf</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--pdf` flag.
</p>
<p name="Classification.multiqcTask.sampleNames">
        <b>Classification.multiqcTask.sampleNames</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--sample-names` option.
</p>
<p name="Classification.multiqcTask.tag">
        <b>Classification.multiqcTask.tag</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--tag` option.
</p>
<p name="Classification.multiqcTask.template">
        <b>Classification.multiqcTask.template</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--template` option.
</p>
<p name="Classification.multiqcTask.timeMinutes">
        <b>Classification.multiqcTask.timeMinutes</b><br />
        <i>Int &mdash; Default: 2 + ceil((size(reports,"G") * 8))</i><br />
        The maximum amount of time the job will run in minutes.
</p>
<p name="Classification.multiqcTask.title">
        <b>Classification.multiqcTask.title</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--title` option.
</p>
<p name="Classification.multiqcTask.zipDataDir">
        <b>Classification.multiqcTask.zipDataDir</b><br />
        <i>Boolean &mdash; Default: true</i><br />
        Equivalent to MultiQC's `--zip-data-dir` flag.
</p>
</details>








<hr />

> Generated using WDL AID (0.1.1)
