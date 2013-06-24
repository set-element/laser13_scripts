#!/bin/sh
# for tipper data, total uniq addr in time window
source ./tipper_file_data

mysql -u root --database=infoshare --batch --skip-column-names << EOF
select count(*),addr from tipper_time where unix_timestamp(ts) > 1348866791 group by addr;
EOF
