#!/bin/bash

sleep 30

hdfs dfs -mkdir -p /user/history

hdfs dfs -put /tmp/history.txt /user/history