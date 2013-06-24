#!/bin/sh
# create and load database and tipper data tables.
source ./tipper_file_data

mysql -u root --database=infoshare --batch --skip-column-names << EOF
load data local infile '\$RAW_TIPPER_DATA_DIR/\$PROC_TIPPER_DATA' into table tipper_c_rec fields terminated by ' ';

alter table tipper_c_rec add index (id_orig_h);
alter table tipper_c_rec add index (id_resp_h);
EOF
