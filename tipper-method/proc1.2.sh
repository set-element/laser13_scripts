#!/bin/sh
# create and load database and tipper data tables.
source ./tipper_file_data

mysql -u root --database=infoshare --batch --skip-column-names << EOF
create table tipper_time (addr varchar(16), int_count int, ts datetime);
alter table tipper_time add index (addr);

load data local infile '\$RAW_TIPPER_DATA_DIR/\$TIPPER_INDICATE' into table tipper_time fields terminated by ' ';
EOF
