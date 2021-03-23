#!/bin/sh

srcs/nginx/buildMainNginx.sh &&\
srcs/mysql/buildMysql.sh &&\
srcs/influxdb/buildInfluxdb.sh &&\
srcs/wordpress/buildWordpressNginx.sh &&\
srcs/phpmyadmin/buildPhpMyAdmin.sh &&\
srcs/grafana/buildGrafana.sh &&\
srcs/ftps/buildFtps.sh
