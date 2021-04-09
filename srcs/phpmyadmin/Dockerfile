FROM alpine:3.12.3

# install packages
RUN apk update
RUN apk add nginx libc6-compat supervisor php7 php7-mysqli php7-curl php7-mbstring\
		php7-json php7-session php7-fpm php7-zlib

# installing telegraf
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.18.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.18.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.18.0_linux_amd64.tar.gz
COPY ./telegraf.conf /etc/telegraf/

# setup nginx.conf for nginx
RUN mkdir -p /run/nginx
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# setup PhpMyAdmin
RUN mkdir -p /www/phpmyadmin/tmp
RUN chmod 777 /www/phpmyadmin/tmp
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
RUN tar -xf phpMyAdmin-5.0.4-all-languages.tar.gz --strip-components=1 -C /www/phpmyadmin
RUN rm phpMyAdmin-5.0.4-all-languages.tar.gz
COPY ./config.inc.php /www/phpmyadmin/

# setup for supervisord
COPY ./supervisord.conf /etc/

# open ports
EXPOSE 5000

# start supervisord
CMD supervisord
