#!/bin/sh
source ./tipper_file_data

cat \$TIPPER_IP | while read ADDR
do
	D=`./proc4.0.sh $ADDR`
	echo "$ADDR $D"

done
