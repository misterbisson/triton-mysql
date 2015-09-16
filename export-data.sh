#!/bin/bash


https://dev.mysql.com/doc/refman/5.6/en/replication-howto-masterstatus.html

mysql> FLUSH TABLES WITH READ LOCK;
mysql > SHOW MASTER STATUS;

https://dev.mysql.com/doc/refman/5.6/en/replication-howto-rawdata.html

Tell the entrypoint script to wait and not exit when mysql does
This probably requires starting MySQL in a do-while loop http://stackoverflow.com/a/16491478

mysqladmin shutdown
tar cf /data/backups/raw.tar /var/lib/mysql

mysqladmin start (with same args from entrypoint)