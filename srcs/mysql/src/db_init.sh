#!/bin/sh

rc default
/etc/init.d/mariadb setup
rc-service mariadb start
mysql -u root mysql < create_db.sql
mysql -u root wordpress < mysql-service.sql
rc-service mariadb stop
/usr/bin/supervisord
