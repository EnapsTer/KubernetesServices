#!/bin/sh

# for initialisation
rc default
# setup and start mariadb
/etc/init.d/mariadb setup
rc-service mariadb start
# create and init wordpress database
mysql -u root mysql < create_db.sql
mysql -u root wordpress < mysql-service.sql
# stop mariadb
rc-service mariadb stop
# run supervisord
/usr/bin/supervisord
