#!/bin/sh

mysql -u root --database=infoshare  --batch --skip-column-names << EOF
select id_resp_h from tipper_c_rec c where ((c.id_resp_h not like '128.3.%') and (c.id_resp_h not like '131.243.%' )) group by c.id_resp_h;
EOF
