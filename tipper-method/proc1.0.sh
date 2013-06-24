#!/bin/sh
# create and load database and tipper data tables.

mysql -u root --batch --skip-column-names << EOF
create database infoshare;
use infoshare
create table tipper_c_rec (ts int, id_orig_h varchar(16), id_orig_p int, id_resp_h varchar(16), id_resp_p int, proto varchar(8), conn_state varchar(8) );
EOF
