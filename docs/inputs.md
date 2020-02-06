# Pipeline


## Inputs


### Required inputs
<p name="Pipeline.dockerImagesFile">
        <b>Pipeline.dockerImagesFile</b><br />
        <i>File &mdash; Default: None</i><br />
        The docker image used for this workflow. Changing this may result in errors which the developers may choose not to address.
</p>
<p name="Pipeline.executeSampleWorkflow.centrifugeIndex">
        <b>Pipeline.executeSampleWorkflow.centrifugeIndex</b><br />
        <i>Array[File]+ &mdash; Default: None</i><br />
        The files of the index for the reference genomes.
</p>
<p name="Pipeline.executeSampleWorkflow.executeCentrifuge.inputFormat">
        <b>Pipeline.executeSampleWorkflow.executeCentrifuge.inputFormat</b><br />
        <i>String &mdash; Default: "fastq"</i><br />
        The format of the read file(s).
</p>
<p name="Pipeline.executeSampleWorkflow.executeCentrifuge.minHitLength">
        <b>Pipeline.executeSampleWorkflow.executeCentrifuge.minHitLength</b><br />
        <i>Int &mdash; Default: 22</i><br />
        Minimum length of partial hits.
</p>
<p name="Pipeline.executeSampleWorkflow.executeCentrifuge.phred64">
        <b>Pipeline.executeSampleWorkflow.executeCentrifuge.phred64</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        If set to true, Phred+64 encoding is used.
</p>
<p name="Pipeline.sampleConfigFile">
        <b>Pipeline.sampleConfigFile</b><br />
        <i>File &mdash; Default: None</i><br />
        Samplesheet describing input fasta/fastq files.
</p>

### Other common inputs
<p name="Pipeline.executeSampleWorkflow.executeCentrifuge.excludeTaxIDs">
        <b>Pipeline.executeSampleWorkflow.executeCentrifuge.excludeTaxIDs</b><br />
        <i>String? &mdash; Default: None</i><br />
        A comma-separated list of taxonomic IDs that will be excluded in classification procedure.
</p>
<p name="Pipeline.executeSampleWorkflow.executeCentrifuge.hostTaxIDs">
        <b>Pipeline.executeSampleWorkflow.executeCentrifuge.hostTaxIDs</b><br />
        <i>String? &mdash; Default: None</i><br />
        A comma-separated list of taxonomic IDs that will be preferred in classification procedure.
</p>
<p name="Pipeline.executeSampleWorkflow.executeCentrifuge.reportMaxDistinct">
        <b>Pipeline.executeSampleWorkflow.executeCentrifuge.reportMaxDistinct</b><br />
        <i>Int? &mdash; Default: None</i><br />
        It searches for at most <int> distinct, primary assignments for each read or pair.
</p>
<p name="Pipeline.executeSampleWorkflow.executeCentrifuge.trim3">
        <b>Pipeline.executeSampleWorkflow.executeCentrifuge.trim3</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Trim <int> bases from 3' (right) end of each read before alignment.
</p>
<p name="Pipeline.executeSampleWorkflow.executeCentrifuge.trim5">
        <b>Pipeline.executeSampleWorkflow.executeCentrifuge.trim5</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Trim <int> bases from 5' (left) end of each read before alignment.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.adapterForward">
        <b>Pipeline.executeSampleWorkflow.qualityControl.adapterForward</b><br />
        <i>String? &mdash; Default: "AGATCGGAAGAG"</i><br />
        The adapter to be removed from the reads first or single end reads.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.adapterReverse">
        <b>Pipeline.executeSampleWorkflow.qualityControl.adapterReverse</b><br />
        <i>String? &mdash; Default: "AGATCGGAAGAG"</i><br />
        The adapter to be removed from the reads second end reads.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.contaminations">
        <b>Pipeline.executeSampleWorkflow.qualityControl.contaminations</b><br />
        <i>Array[String]+? &mdash; Default: None</i><br />
        Contaminants/adapters to be removed from the reads.
</p>
<p name="Pipeline.outputDirectory">
        <b>Pipeline.outputDirectory</b><br />
        <i>String &mdash; Default: "."</i><br />
        The directory to which the outputs will be written.
</p>

### Advanced inputs
<details>
<summary> Show/Hide </summary>
<p name="Pipeline.convertDockerImagesFile.dockerImage">
        <b>Pipeline.convertDockerImagesFile.dockerImage</b><br />
        <i>String &mdash; Default: "quay.io/biocontainers/biowdl-input-converter:0.2.1--py_0"</i><br />
        The docker image used for this task. Changing this may result in errors which the developers may choose not to address.
</p>
<p name="Pipeline.convertSampleConfig.checkFileMd5sums">
        <b>Pipeline.convertSampleConfig.checkFileMd5sums</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Whether or not the MD5 sums of the files mentioned in the samplesheet should be checked.
</p>
<p name="Pipeline.convertSampleConfig.old">
        <b>Pipeline.convertSampleConfig.old</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Whether or not the old samplesheet format should be used.
</p>
<p name="Pipeline.convertSampleConfig.skipFileCheck">
        <b>Pipeline.convertSampleConfig.skipFileCheck</b><br />
        <i>Boolean &mdash; Default: true</i><br />
        Whether or not the existance of the files mentioned in the samplesheet should be checked.
</p>
<p name="Pipeline.executeSampleWorkflow.executeCentrifuge.memory">
        <b>Pipeline.executeSampleWorkflow.executeCentrifuge.memory</b><br />
        <i>String &mdash; Default: "16G"</i><br />
        The amount of memory available to the job.
</p>
<p name="Pipeline.executeSampleWorkflow.executeCentrifuge.threads">
        <b>Pipeline.executeSampleWorkflow.executeCentrifuge.threads</b><br />
        <i>Int &mdash; Default: 4</i><br />
        The number of threads to be used.
</p>
<p name="Pipeline.executeSampleWorkflow.executeKrona.memory">
        <b>Pipeline.executeSampleWorkflow.executeKrona.memory</b><br />
        <i>String &mdash; Default: "4G"</i><br />
        The amount of memory available to the job.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.bwa">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.bwa</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --bwa flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.colorspace">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.colorspace</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --colorspace flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.cores">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.cores</b><br />
        <i>Int &mdash; Default: 1</i><br />
        The number of cores to use.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.cut">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.cut</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --cut option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.discardTrimmed">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.discardTrimmed</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --quality-cutoff option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.discardUntrimmed">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.discardUntrimmed</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --discard-untrimmed option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.doubleEncode">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.doubleEncode</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --double-encode flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.errorRate">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.errorRate</b><br />
        <i>Float? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --error-rate option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.front">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.front</b><br />
        <i>Array[String] &mdash; Default: []</i><br />
        A list of 5' ligated adapter sequences to be cut from the given first or single end fastq file.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.frontRead2">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.frontRead2</b><br />
        <i>Array[String] &mdash; Default: []</i><br />
        A list of 5' ligated adapter sequences to be cut from the given second end fastq file.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.infoFilePath">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.infoFilePath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --info-file option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.interleaved">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.interleaved</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --interleaved flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.length">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.length</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --length option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.lengthTag">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.lengthTag</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --length-tag option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.maq">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.maq</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --maq flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.maskAdapter">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.maskAdapter</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --mask-adapter flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.matchReadWildcards">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.matchReadWildcards</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --match-read-wildcards flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.maximumLength">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.maximumLength</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --maximum-length option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.maxN">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.maxN</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --max-n option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.memory">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.memory</b><br />
        <i>String &mdash; Default: "4G"</i><br />
        The amount of memory this job will use.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.minimumLength">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.minimumLength</b><br />
        <i>Int? &mdash; Default: 2</i><br />
        Equivalent to cutadapt's --minimum-length option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.nextseqTrim">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.nextseqTrim</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --nextseq-trim option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.noIndels">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.noIndels</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --no-indels flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.noMatchAdapterWildcards">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.noMatchAdapterWildcards</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --no-match-adapter-wildcards flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.noTrim">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.noTrim</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --no-trim flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.noZeroCap">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.noZeroCap</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --no-zero-cap flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.overlap">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.overlap</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --overlap option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.pairFilter">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.pairFilter</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --pair-filter option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.prefix">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.prefix</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --prefix option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.qualityBase">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.qualityBase</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --quality-base option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.qualityCutoff">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.qualityCutoff</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --quality-cutoff option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.restFilePath">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.restFilePath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --rest-file option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.stripF3">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.stripF3</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --strip-f3 flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.stripSuffix">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.stripSuffix</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --strip-suffix option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.suffix">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.suffix</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --suffix option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.times">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.times</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --times option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.tooLongOutputPath">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.tooLongOutputPath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --too-long-output option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.tooLongPairedOutputPath">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.tooLongPairedOutputPath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --too-long-paired-output option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.tooShortOutputPath">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.tooShortOutputPath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --too-short-output option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.tooShortPairedOutputPath">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.tooShortPairedOutputPath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --too-short-paired-output option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.trimN">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.trimN</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --trim-n flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.untrimmedOutputPath">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.untrimmedOutputPath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --untrimmed-output option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.untrimmedPairedOutputPath">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.untrimmedPairedOutputPath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --untrimmed-paired-output option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.wildcardFilePath">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.wildcardFilePath</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --wildcard-file option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.Z">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.Z</b><br />
        <i>Boolean &mdash; Default: true</i><br />
        Equivalent to cutadapt's -Z flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.zeroCap">
        <b>Pipeline.executeSampleWorkflow.qualityControl.Cutadapt.zeroCap</b><br />
        <i>Boolean? &mdash; Default: None</i><br />
        Equivalent to cutadapt's --zero-cap flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.adapters">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.adapters</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --adapters option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.casava">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.casava</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --casava flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.contaminants">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.contaminants</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --contaminants option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.dir">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.dir</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --dir option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.extract">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.extract</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --extract flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.format">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.format</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --format option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.kmers">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.kmers</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --kmers option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.limits">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.limits</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --limits option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.minLength">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.minLength</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --min_length option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.nano">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.nano</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nano flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.noFilter">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.noFilter</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nofilter flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.nogroup">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.nogroup</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nogroup flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.threads">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1.threads</b><br />
        <i>Int &mdash; Default: 1</i><br />
        The number of cores to use.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.adapters">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.adapters</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --adapters option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.casava">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.casava</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --casava flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.contaminants">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.contaminants</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --contaminants option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.dir">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.dir</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --dir option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.extract">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.extract</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --extract flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.format">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.format</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --format option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.kmers">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.kmers</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --kmers option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.limits">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.limits</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --limits option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.minLength">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.minLength</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --min_length option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.nano">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.nano</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nano flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.noFilter">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.noFilter</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nofilter flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.nogroup">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.nogroup</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nogroup flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.threads">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead1After.threads</b><br />
        <i>Int &mdash; Default: 1</i><br />
        The number of cores to use.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.adapters">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.adapters</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --adapters option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.casava">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.casava</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --casava flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.contaminants">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.contaminants</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --contaminants option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.dir">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.dir</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --dir option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.extract">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.extract</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --extract flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.format">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.format</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --format option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.kmers">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.kmers</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --kmers option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.limits">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.limits</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --limits option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.minLength">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.minLength</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --min_length option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.nano">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.nano</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nano flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.noFilter">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.noFilter</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nofilter flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.nogroup">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.nogroup</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nogroup flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.threads">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2.threads</b><br />
        <i>Int &mdash; Default: 1</i><br />
        The number of cores to use.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.adapters">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.adapters</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --adapters option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.casava">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.casava</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --casava flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.contaminants">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.contaminants</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --contaminants option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.dir">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.dir</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --dir option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.extract">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.extract</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --extract flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.format">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.format</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to fastqc's --format option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.kmers">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.kmers</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --kmers option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.limits">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.limits</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to fastqc's --limits option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.minLength">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.minLength</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to fastqc's --min_length option.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.nano">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.nano</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nano flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.noFilter">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.noFilter</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nofilter flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.nogroup">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.nogroup</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to fastqc's --nogroup flag.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.threads">
        <b>Pipeline.executeSampleWorkflow.qualityControl.FastqcRead2After.threads</b><br />
        <i>Int &mdash; Default: 1</i><br />
        The number of cores to use.
</p>
<p name="Pipeline.executeSampleWorkflow.qualityControl.runAdapterClipping">
        <b>Pipeline.executeSampleWorkflow.qualityControl.runAdapterClipping</b><br />
        <i>Boolean &mdash; Default: defined(adapterForward) || defined(adapterReverse) || length(select_first([contaminations, []])) > 0</i><br />
        Whether or not adapters should be removed from the reads.
</p>
<p name="Pipeline.multiqcTask.clConfig">
        <b>Pipeline.multiqcTask.clConfig</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--cl-config` option.
</p>
<p name="Pipeline.multiqcTask.comment">
        <b>Pipeline.multiqcTask.comment</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--comment` option.
</p>
<p name="Pipeline.multiqcTask.config">
        <b>Pipeline.multiqcTask.config</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--config` option.
</p>
<p name="Pipeline.multiqcTask.dataDir">
        <b>Pipeline.multiqcTask.dataDir</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--data-dir` flag.
</p>
<p name="Pipeline.multiqcTask.dataFormat">
        <b>Pipeline.multiqcTask.dataFormat</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--data-format` option.
</p>
<p name="Pipeline.multiqcTask.dirs">
        <b>Pipeline.multiqcTask.dirs</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--dirs` flag.
</p>
<p name="Pipeline.multiqcTask.dirsDepth">
        <b>Pipeline.multiqcTask.dirsDepth</b><br />
        <i>Int? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--dirs-depth` option.
</p>
<p name="Pipeline.multiqcTask.exclude">
        <b>Pipeline.multiqcTask.exclude</b><br />
        <i>Array[String]+? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--exclude` option.
</p>
<p name="Pipeline.multiqcTask.export">
        <b>Pipeline.multiqcTask.export</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--export` flag.
</p>
<p name="Pipeline.multiqcTask.fileList">
        <b>Pipeline.multiqcTask.fileList</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--file-list` option.
</p>
<p name="Pipeline.multiqcTask.fileName">
        <b>Pipeline.multiqcTask.fileName</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--filename` option.
</p>
<p name="Pipeline.multiqcTask.flat">
        <b>Pipeline.multiqcTask.flat</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--flat` flag.
</p>
<p name="Pipeline.multiqcTask.force">
        <b>Pipeline.multiqcTask.force</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--force` flag.
</p>
<p name="Pipeline.multiqcTask.fullNames">
        <b>Pipeline.multiqcTask.fullNames</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--fullnames` flag.
</p>
<p name="Pipeline.multiqcTask.ignore">
        <b>Pipeline.multiqcTask.ignore</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--ignore` option.
</p>
<p name="Pipeline.multiqcTask.ignoreSamples">
        <b>Pipeline.multiqcTask.ignoreSamples</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--ignore-samples` option.
</p>
<p name="Pipeline.multiqcTask.ignoreSymlinks">
        <b>Pipeline.multiqcTask.ignoreSymlinks</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--ignore-symlinks` flag.
</p>
<p name="Pipeline.multiqcTask.interactive">
        <b>Pipeline.multiqcTask.interactive</b><br />
        <i>Boolean &mdash; Default: true</i><br />
        Equivalent to MultiQC's `--interactive` flag.
</p>
<p name="Pipeline.multiqcTask.lint">
        <b>Pipeline.multiqcTask.lint</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--lint` flag.
</p>
<p name="Pipeline.multiqcTask.megaQCUpload">
        <b>Pipeline.multiqcTask.megaQCUpload</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Opposite to MultiQC's `--no-megaqc-upload` flag.
</p>
<p name="Pipeline.multiqcTask.memory">
        <b>Pipeline.multiqcTask.memory</b><br />
        <i>String &mdash; Default: "4G"</i><br />
        The amount of memory this job will use.
</p>
<p name="Pipeline.multiqcTask.module">
        <b>Pipeline.multiqcTask.module</b><br />
        <i>Array[String]+? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--module` option.
</p>
<p name="Pipeline.multiqcTask.noDataDir">
        <b>Pipeline.multiqcTask.noDataDir</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--no-data-dir` flag.
</p>
<p name="Pipeline.multiqcTask.pdf">
        <b>Pipeline.multiqcTask.pdf</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--pdf` flag.
</p>
<p name="Pipeline.multiqcTask.sampleNames">
        <b>Pipeline.multiqcTask.sampleNames</b><br />
        <i>File? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--sample-names` option.
</p>
<p name="Pipeline.multiqcTask.tag">
        <b>Pipeline.multiqcTask.tag</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--tag` option.
</p>
<p name="Pipeline.multiqcTask.template">
        <b>Pipeline.multiqcTask.template</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--template` option.
</p>
<p name="Pipeline.multiqcTask.title">
        <b>Pipeline.multiqcTask.title</b><br />
        <i>String? &mdash; Default: None</i><br />
        Equivalent to MultiQC's `--title` option.
</p>
<p name="Pipeline.multiqcTask.zipDataDir">
        <b>Pipeline.multiqcTask.zipDataDir</b><br />
        <i>Boolean &mdash; Default: false</i><br />
        Equivalent to MultiQC's `--zip-data-dir` flag.
</p>
<p name="Pipeline.runMultiQC">
        <b>Pipeline.runMultiQC</b><br />
        <i>Boolean &mdash; Default: if outputDirectory == "." then false else true</i><br />
        Whether or not MultiQC should be run.
</p>
</details>








<hr />

> Generated using WDL AID (0.1.1)
