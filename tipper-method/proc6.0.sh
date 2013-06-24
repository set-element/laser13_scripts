#!/bin/sh

source ./tipper_file_data

# this file is run against raw tipper extract data
#  and looks for the closest timestamp value located 
#  above it.

cat INDICATORS.IP | while read IP
do
	# get timestamp
	D=`grep -B 1000 $IP INDICATORS | grep "#" | tail -1 | awk ' { print $2 } '`
	
	# see how many times the address has been seen
	N=`grep -c $IP INDICATORS`

	# express values
	echo "$IP  $N $D"
done
