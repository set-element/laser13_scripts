#!/bin/sh
source ./tipper_file_data
# 
# scripts generate database, fiill with data and place appropriate indicies in place
echo "init database ..."
./proc1.0.sh

echo "loading connection data ..."
./proc1.1.sh

echo "creating tipper tables and loading data ..."
./proc1.2.sh
