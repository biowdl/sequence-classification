Changelog
==========

<!--
Newest changes should be on top.

This document is user facing. Please word the changes in such a way
that users understand how the changes affect the new version.
-->

version develop
---------------------------
+ Make the MultiQC task suitable for use with a `final_workflow_outputs_dir` 
  so it can be used on all of Cromwell's supported backends.
+ Tasks were updated to contain the `time_minutes` runtime attribute and
  associated `timeMinutes` input, describing the maximum time the task will
  take to run.
+ Renamed workflow from `pipeline` to `Classification`.
+ Removed Jenkinsfile from repo.
+ Update documentation with more specific example of sample sheet CSV file.
+ Update CutAdapt to 2.8.
+ Update MultiQC to 1.8.
+ Update FastQC to 0.11.9.
+ Remove unused docker image.
+ Add cromwell test config.
+ Add Krona plot.
+ Setup the Centrifuge pipeline.
