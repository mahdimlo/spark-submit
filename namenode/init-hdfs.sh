#!/bin/bash

# Function to check HDFS availability
check_hdfs() {
  hdfs dfs -ls / > /dev/null 2>&1
  return $?
}

# Retry logic
retries=30
until check_hdfs; do
  if [ $retries -le 0 ]; then
    echo "HDFS service not available after multiple retries."
    exit 1
  fi
  echo "Waiting for HDFS service..."
  sleep 10
  retries=$((retries - 1))
done

# Create a directory in HDFS
hdfs dfs -mkdir -p /user/history

# Put the local file into HDFS
hdfs dfs -put /tmp/history.txt /user/history
