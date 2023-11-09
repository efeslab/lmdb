#!/bin/bash

LMDB_PATH=/home/yilegu/eecs582pj7/pm-cc-bug-finder/targets/LMDB

# Get the current time in the format "YYYY-MM-DD_HH-MM-SS"
CUR_TIME=$(date +"%Y-%m-%d_%H-%M-%S")

# Create a directory with the name of the current time
LOG_PATH=$LMDB_PATH/logs/strace/$CUR_TIME

mkdir "$LOG_PATH"

rm $LMDB_PATH/testdb/*

strace -ff -o $LOG_PATH/mtest_log -e t=all  $LMDB_PATH/mtest

rm $LMDB_PATH/testdb/*
strace -ff -o $LOG_PATH/mtest2_log -e t=all  $LMDB_PATH/mtest2

rm $LMDB_PATH/testdb/*

strace -ff -o $LOG_PATH/mtest3_log -e t=all  $LMDB_PATH/mtest3

rm $LMDB_PATH/testdb/*

strace -ff -o $LOG_PATH/mtest4_log -e t=all  $LMDB_PATH/mtest4

rm $LMDB_PATH/testdb/*

strace -ff -o $LOG_PATH/mtest5_log -e t=all  $LMDB_PATH/mtest5

rm $LMDB_PATH/testdb/*

strace -ff -o $LOG_PATH/mtest6_log -e t=all  $LMDB_PATH/mtest6

rm $LMDB_PATH/testdb/*










