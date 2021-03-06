#!/bin/bash

set -eu

TOKEN=${TOKEN:-}
CLASSIFIER=${CLASSIFIER:-}
SLEEP_LENGTH=60

run() {
    LOGFILE=results_${INPUT_FILE}_${BATCH_SIZE}_${RPM}.log
    { time go run ./cmd/ \
       -token $TOKEN \
       -classifier $CLASSIFIER \
       -batch $BATCH_SIZE \
       -rpm $RPM \
       -file ${INPUT_FILE}.json \
    2> ${LOGFILE} ; } 2>> ${LOGFILE}
}

# Process 50 documents
INPUT_FILE=articles_50 BATCH_SIZE=1 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_50 BATCH_SIZE=2 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_50 BATCH_SIZE=5 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_50 BATCH_SIZE=10 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_50 BATCH_SIZE=25 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_50 BATCH_SIZE=50 RPM=120 run && sleep ${SLEEP_LENGTH}

# Process 100 documents
INPUT_FILE=articles_100 BATCH_SIZE=1 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_100 BATCH_SIZE=2 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_100 BATCH_SIZE=5 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_100 BATCH_SIZE=10 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_100 BATCH_SIZE=20 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_100 BATCH_SIZE=25 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_100 BATCH_SIZE=50 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_100 BATCH_SIZE=100 RPM=120 run && sleep ${SLEEP_LENGTH}

# Process 200 documents
INPUT_FILE=articles_200 BATCH_SIZE=1 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_200 BATCH_SIZE=2 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_200 BATCH_SIZE=5 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_200 BATCH_SIZE=10 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_200 BATCH_SIZE=20 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_200 BATCH_SIZE=25 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_200 BATCH_SIZE=50 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_200 BATCH_SIZE=100 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_200 BATCH_SIZE=200 RPM=120 run && sleep ${SLEEP_LENGTH}

# Process 500 documents
INPUT_FILE=articles_500 BATCH_SIZE=1 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_500 BATCH_SIZE=2 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_500 BATCH_SIZE=5 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_500 BATCH_SIZE=10 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_500 BATCH_SIZE=20 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_500 BATCH_SIZE=25 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_500 BATCH_SIZE=50 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_500 BATCH_SIZE=100 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_500 BATCH_SIZE=200 RPM=120 run && sleep ${SLEEP_LENGTH}
INPUT_FILE=articles_500 BATCH_SIZE=500 RPM=120 run
