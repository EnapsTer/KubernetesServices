FROM alpine:3.12.3

# installing packages
RUN apk update
RUN apk add libc6-compat nginx supervisor openssl

# creating folders for ssh and ssl
RUN mkdir -p /etc/nginx/.ssh
RUN mkdir -p /etc/nginx/.ssl

# generate ssl
RUN	openssl req -x509 -nodes -days 365 \
	-subj "/C=RU/ST=Moscow/O=Ft_servicesCompany, Inc./CN=ft_services.com" \
	-addext "subjectAltName=DNS:aherlind.com" \
	-newkey rsa:2048 -keyout /etc/nginx/.ssh/aherlind.key \
	-out /etc/nginx/.ssl/aherlind.crt

# creating user
RUN adduser -D aherlind
RUN echo "aherlind:aherlind" | chpasswd

# setup nginx.conf for nginx
RUN mkdir -p /run/nginx
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# setup telegraph
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.18.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.18.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.18.0_linux_amd64.tar.gz
COPY ./telegraf.conf /etc/telegraf/

# setup supervisord
COPY ./supervisord.conf /etc/

# open ports for http, https
EXPOSE 80 443 22

# start supervisord config
CMD supervisord
