#!/bin/sh

cat /home/scottc/development/laser13/tipper-IPs-searches/INDICATORS.IP.out | awk ' { print $1 } ' | while read IP
do
	n=`./proc7.0.sh $IP`	

	echo "$IP $n "
done
