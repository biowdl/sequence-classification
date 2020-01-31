# Test data

* Build centrifuge [index](https://ccb.jhu.edu/software/centrifuge/manual.shtml#database-download-and-index-building):
  * centrifuge-download -o taxonomy taxonomy
  * centrifuge-download -o library -m -d "viral" refseq > seqid2taxid.map
  * cat library/*/(IDsInListBelow).fna > reference_sequences.fna
  * centrifuge-build -p 1 --conversion-table seqid2taxid.map --taxonomy-tree taxonomy/nodes.dmp --name-table taxonomy/names.dmp reference_sequences.fna norovirus

* Norovirus NCBI ID list:
  * GCF_000864005.1
  * GCF_000868425.1
  * GCF_001595675.1
  * GCF_001595715.1
  * GCF_003638645.1
  * GCF_003638665.1
  * GCF_003638685.1
  * GCF_003813225.1
  * GCF_004193815.1
  * GCF_007608995.1
  * GCF_007609015.1
  * GCF_007609035.1
  * GCF_008703965.1
  * GCF_008703985.1
  * GCF_008704005.1
  * GCF_008704025.1
  * GCF_008711635.1

* Generate test data:
  * [dwgsim](https://github.com/nh13/DWGSIM) -z 1995 reference_sequences.fna norovirus
  * Paired end data:
    * head -n 20000 (norovirus.bwa.read1.fastq) > norovirus.pairedEnd.1.R1.fastq
    * head -n 20000 (norovirus.bwa.read2.fastq) > norovirus.pairedEnd.1.R2.fastq
    * tail -n 20000 (norovirus.bwa.read1.fastq) > norovirus.pairedEnd.2.R1.fastq
    * tail -n 20000 (norovirus.bwa.read2.fastq) > norovirus.pairedEnd.2.R2.fastq
