FROM alpine:3.12.3

# Installing required packages.

RUN apk update
RUN apk add nginx supervisor php7 php7-mysqli php7-zlib php7-curl php7-mbstring\
		php7-json php7-session php7-fpm libc6-compat


#-----------------------------

# Installing telegraf.

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.17.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.17.0_linux_amd64.tar.gz
COPY src/telegraf.conf /etc/telegraf/

#-----------------------------

# Setup nginx.conf for nginx.
RUN mkdir -p /run/nginx
COPY ./src/nginx.conf /etc/nginx/conf.d/default.conf

#------------------------------

# Setup PhpMyAdmin.

RUN mkdir -p /www/phpmyadmin/tmp
RUN chmod 777 /www/phpmyadmin/tmp
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
RUN tar -xf phpMyAdmin-5.0.4-all-languages.tar.gz --strip-components=1 -C /www/phpmyadmin
RUN rm phpMyAdmin-5.0.4-all-languages.tar.gz
COPY src/config.inc.php /www/phpmyadmin/

#-----------------------------

# Setup supervisord.conf for supervisord.

COPY src/supervisord.conf /etc/

#------------------------------

# Open ports

EXPOSE 5000

#------------------------------

# Final command

CMD supervisord -c /etc/supervisord.conf

#------------------------------
