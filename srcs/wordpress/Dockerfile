FROM alpine:3.12.3

# installing packages
RUN apk update
RUN	apk add supervisor nginx php7 php7-mysqli php7-zlib php7-curl php7-mbstring\
	php7-json php7-session php7-fpm libc6-compat

# setup nginx
RUN mkdir -p /run/nginx
COPY ./src/nginx.conf /etc/nginx/conf.d/default.conf

# setup wordpress
RUN wget http://wordpress.org/latest.tar.gz
RUN mkdir /www
RUN tar -xf latest.tar.gz --strip-components=1 -C /www
RUN rm latest.tar.gz
COPY src/wp-config.php /www/

# setup telegraf
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.17.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.17.0_linux_amd64.tar.gz
COPY src/telegraf.conf /etc/telegraf/

# setup supervisord
COPY ./src/supervisord.conf /etc/

# port to use
EXPOSE 5050

# start supervisord
CMD supervisord
