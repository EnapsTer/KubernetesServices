FROM alpine:3.12.3

# Installing required packages.

RUN apk update
RUN apk add\
	vsftpd\
	openssl\
	libc6-compat\
	supervisor &&\
	mkdir -p /var/ftp

#-----------------------------

# Installing telegraf.

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.17.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.17.0_linux_amd64.tar.gz
COPY src/telegraf.conf /etc/telegraf/

#------------------------------

# Creating ssh-key and user

RUN openssl req\
	-x509\
	-nodes\
	-days 365\
	-subj "/C=RU/ST=Moscow/L=Moscow/O=Ft_servicesCompany, Inc./CN=ft_services.com"\
	-addext "subjectAltName=DNS:aherlind.com"\
	-newkey rsa:2048\
	-keyout /etc/vsftpd/aherlind.key\
	-out /etc/vsftpd/aherlind.crt

RUN adduser -D -g 'aherlind' aherlind
RUN echo "aherlind:pass" | chpasswd

#------------------------------

# Setup supervisord.

COPY src/supervisord.conf /etc/
COPY src/startSupervisord.sh /

#------------------------------

# Setup vsftpd.conf

COPY src/vsftpd.conf /etc/vsftpd/

#------------------------------

# Open ports

EXPOSE 21 21000

#------------------------------

# Final command

CMD /startSupervisord.sh

#------------------------------
