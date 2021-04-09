FROM alpine:3.12.3

# installing packages
RUN apk update
RUN apk add vsftpd openssl libc6-compat supervisor

# directory for anonymus access
RUN mkdir -p /var/ftp

# setup telegraf
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.18.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.18.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.18.0_linux_amd64.tar.gz
COPY ./telegraf.conf /etc/telegraf/

# generate ssl
RUN openssl req -x509 -nodes -days 365\
	-subj "/C=RU/ST=Moscow/L=Moscow/O=Ft_servicesCompany, Inc./CN=ft_services.com"\
	-addext "subjectAltName=DNS:aherlind.com"\
	-newkey rsa:2048\
	-keyout /etc/vsftpd/aherlind.key\
	-out /etc/vsftpd/aherlind.crt

RUN adduser -D aherlind
RUN echo "aherlind:aherlind" | chpasswd

# setup supervisord
COPY ./supervisord.conf /etc/

# setup vsftpd
COPY ./vsftpd.conf /etc/vsftpd/

# open ports
EXPOSE 21 21000

# start supervisord
CMD supervisord
