#!/bin/sh
source ./tipper_file_data

# consolidate and clean connection log data = in this case we remove any
#  connection that is not in the LBL 2 x /16 networks

cat $RAW_TIPPER_DATA_DIR/conn.* | egrep "$128\.3\.|$131\.243\." > $RAW_TIPPER_DATA_DIR/$RAW_TIPPER_DATA_OUT

awk -F '\t' ' { print $1 " " $3 " " $4 " " $5 " " $6 " " $7 " " $12 } ' $RAW_TIPPER_DATA_DIR/$RAW_TIPPER_DATA_OUT > $RAW_TIPPER_DATA_DIR/$RAW_TIPPER_DATA_OUT
