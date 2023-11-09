#!/bin/bash

LMDB_PATH=/home/yilegu/eecs582pj7/pm-cc-bug-finder/targets/LMDB

# Get the current time in the format "YYYY-MM-DD_HH-MM-SS"
CUR_TIME=$(date +"%Y-%m-%d_%H-%M-%S")

# Create a directory with the name of the current time
LOG_PATH=$LMDB_PATH/logs/mmio_trace/$CUR_TIME

mkdir "$LOG_PATH"

rm $LMDB_PATH/testdb/*

/home/yilegu/eecs582pj7/pm-cc-bug-finder/pin_tool/pin-3.28/pin -follow-execv -t /home/yilegu/eecs582pj7/pm-cc-bug-finder/pin_tool/memory_ref/obj-intel64/mmio_trace.so -o $LOG_PATH/mtest.log -tf testdb -- /home/yilegu/eecs582pj7/pm-cc-bug-finder/targets/LMDB/mtest


rm $LMDB_PATH/testdb/*

/home/yilegu/eecs582pj7/pm-cc-bug-finder/pin_tool/pin-3.28/pin -follow-execv -t /home/yilegu/eecs582pj7/pm-cc-bug-finder/pin_tool/memory_ref/obj-intel64/mmio_trace.so -o $LOG_PATH/mtest2.log -tf testdb -- /home/yilegu/eecs582pj7/pm-cc-bug-finder/targets/LMDB/mtest2

rm $LMDB_PATH/testdb/*

/home/yilegu/eecs582pj7/pm-cc-bug-finder/pin_tool/pin-3.28/pin -follow-execv -t /home/yilegu/eecs582pj7/pm-cc-bug-finder/pin_tool/memory_ref/obj-intel64/mmio_trace.so -o $LOG_PATH/mtest3.log -tf testdb -- /home/yilegu/eecs582pj7/pm-cc-bug-finder/targets/LMDB/mtest3

rm $LMDB_PATH/testdb/*

/home/yilegu/eecs582pj7/pm-cc-bug-finder/pin_tool/pin-3.28/pin -follow-execv -t /home/yilegu/eecs582pj7/pm-cc-bug-finder/pin_tool/memory_ref/obj-intel64/mmio_trace.so -o $LOG_PATH/mtest4.log -tf testdb -- /home/yilegu/eecs582pj7/pm-cc-bug-finder/targets/LMDB/mtest4

rm $LMDB_PATH/testdb/*

/home/yilegu/eecs582pj7/pm-cc-bug-finder/pin_tool/pin-3.28/pin -follow-execv -t /home/yilegu/eecs582pj7/pm-cc-bug-finder/pin_tool/memory_ref/obj-intel64/mmio_trace.so -o $LOG_PATH/mtest5.log -tf testdb -- /home/yilegu/eecs582pj7/pm-cc-bug-finder/targets/LMDB/mtest5

rm $LMDB_PATH/testdb/*

/home/yilegu/eecs582pj7/pm-cc-bug-finder/pin_tool/pin-3.28/pin -follow-execv -t /home/yilegu/eecs582pj7/pm-cc-bug-finder/pin_tool/memory_ref/obj-intel64/mmio_trace.so -o $LOG_PATH/mtest6.log -tf testdb -- /home/yilegu/eecs582pj7/pm-cc-bug-finder/targets/LMDB/mtest6

rm $LMDB_PATH/testdb/*










