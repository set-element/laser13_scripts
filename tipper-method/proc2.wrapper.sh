#!/bin/sh
source ./tipper_file_data
# script wraps ./proc2.0.sh ./proc2.1.sh and generates results
echo "running 1"
./proc2.0.sh > TMP1
echo "running 2"
./proc2.1.sh >> TMP1

sort -u TMP1 > $TIPPER_IP
wc -l $TIPPER_IP

rm TMP1
