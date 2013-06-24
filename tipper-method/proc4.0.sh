#!/bin/sh
source ./tipper_file_data

HOST=$1

mysql -u root --database=infoshare  --batch --skip-column-names << EOF
select count(*), min(ts), max(ts) - min(ts) from tipper_c_rec where (id_orig_h="$HOST" or id_resp_h="$HOST") and ts > 1348866791;
EOF
