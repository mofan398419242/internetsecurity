#!/bin/bash

base_path=$(cd `dirname $0`; pwd)

spark-submit \
--master "yarn" \
--deploy-mode "cluster" \
--executor-memory "2G" \
--driver-memory "2G" \
--class "me.bayee.internetsecurity.flow.MergeJob" \
--name "MergeJob" \
${base_path}/../lib/internetsecurity-1.0-SNAPSHOT-jar-with-dependencies.jar