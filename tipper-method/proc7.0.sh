#!/bin/sh
# count instances of IP in connection records
HOST=$1

mysql -u root --database=infoshare  --batch --skip-column-names << EOF
select count(*) from tipper_c_rec where (id_orig_h="$HOST" or id_resp_h="$HOST");
EOF
