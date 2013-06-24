#!/bin/sh

source ./tipper_file_data

# this file is run against raw tipper extract data

find . -name INDICATORS -exec cat {} >> /tmp/INDICATORS

egrep -iv "#|=|@|[a-z]" /tmp/INDICATORS  > /tmp/INDICATORS.IP

sort -u /tmp/INDICATORS.IP
