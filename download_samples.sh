#!/bin/bash

DIRS=(
gs://clusterdata-2011-2/job_events/
gs://clusterdata-2011-2/machine_attributes/
gs://clusterdata-2011-2/machine_events/
gs://clusterdata-2011-2/task_constraints/
gs://clusterdata-2011-2/task_events/
gs://clusterdata-2011-2/task_usage/
)

mkdir -p samples
cd samples

for DIR in ${DIRS[@]};
do
  FILENAME=`gsutil ls $DIR | head -n 1`
  gsutil cp $FILENAME `echo $FILENAME | awk -F'/' '{printf("%s-%s", $4, $5)}'`
done

gunzip *
