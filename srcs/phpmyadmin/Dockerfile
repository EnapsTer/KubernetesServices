FROM alpine:3.12.3

# Installing required packages.

RUN apk update
RUN apk add\
		nginx\
		supervisor\
		php7\
		php7-mysqli\
		php7-zlib\
		php7-curl\
		php7-mbstring\
		php7-json\
		php7-session\
		php7-fpm\
		libc6-compat &&\
		mkdir -p /run/nginx

#-----------------------------

# Installing telegraf.

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.17.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.17.0_linux_amd64.tar.gz
COPY src/telegraf.conf /etc/telegraf/

#-----------------------------

# Setup nginx.conf for nginx.

COPY ./src/nginx.conf /etc/nginx/conf.d

COPY src/setupNginxConf.sh /
RUN /setupNginxConf.sh && rm setupNginxConf.sh

#------------------------------

# Setup PhpMyAdmin.

RUN mkdir -p /www/phpmyadmin/tmp &&\
	chmod 777 /www/phpmyadmin/tmp &&\
	wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz &&\
	tar -xf phpMyAdmin-5.0.4-all-languages.tar.gz --strip-components=1 -C /www/phpmyadmin &&\
	rm phpMyAdmin-5.0.4-all-languages.tar.gz
COPY src/config.inc.php /www/phpmyadmin/

#-----------------------------

# Setup supervisord.conf for supervisord.

COPY src/supervisord.conf /etc/
COPY src/startSupervisord.sh /

#------------------------------

# Open ports

EXPOSE 5000

#------------------------------

# Final command

CMD /startSupervisord.sh

#------------------------------
