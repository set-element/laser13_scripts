#!/bin/sh

# This assumes the existance of a file TIPP_IP which contains
#  the list of identified tipper addresses.  Will create an output
#  file TIPPER_IP_FULL which contains { IP count start-time dt }.

source ./tipper_file_data

if [ ! -f $TIPPER_IP ]
then
	echo "data file: $TIPPER_IP missing"
	exit
fi

echo "generate data"
./proc4.1.sh > $TIPPER_IP_FULL

# report on n < 50 values
echo "generate result"
./proc4.2.pl $TIPPER_IP_FULL | wc -l


