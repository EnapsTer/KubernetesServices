FROM alpine:3.12.3

# Installing required packages.

RUN	apk update &&\
	apk add\
	supervisor\
	nginx\
	php7 \
	php7-mysqli \
	php7-zlib \
	php7-curl \
	php7-mbstring \
	php7-json \
	php7-session \
	php7-fpm\
	libc6-compat &&\
	mkdir -p /run/nginx

#-----------------------------


# Setup nginx.conf for nginx.

COPY ./src/nginx.conf /etc/nginx/conf.d

COPY src/setupNginxConf.sh /
RUN /setupNginxConf.sh && rm setupNginxConf.sh

#------------------------------

# Setup Wordpress.

RUN wget http://wordpress.org/latest.tar.gz &&\
	mkdir /www &&\
	tar -xf latest.tar.gz --strip-components=1 -C /www &&\
	rm latest.tar.gz
COPY src/wp-config.php /www/

#------------------------------

# Installing telegraf.

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.17.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.17.0_linux_amd64.tar.gz
COPY src/telegraf.conf /etc/telegraf/

#-----------------------------

# Setup supervisord.conf for supervisord.

COPY ./src/supervisord.conf /etc/
COPY src/startSupervisord.sh /

#------------------------------

# Open ports

EXPOSE 5050

#------------------------------

# Final command

CMD /startSupervisord.sh

#------------------------------
