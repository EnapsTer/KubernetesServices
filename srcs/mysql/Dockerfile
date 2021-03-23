FROM alpine:3.12.3

# Creating external storage

VOLUME ["/var/lib/mysql"]

# Installing required packages.

RUN apk update
RUN apk add\
	mysql\
	mysql-client\
	openrc\
	libc6-compat\
	supervisor

# Installing telegraf.

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.17.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.17.0_linux_amd64.tar.gz
COPY src/telegraf.conf /etc/telegraf/

# Setup supervisord.conf for supervisord.

COPY src/supervisord.conf /etc/

# Database setup.

COPY src/create_db.sql /
COPY src/mysql-service.sql /
COPY src/my.cnf /etc/
COPY src/initAndStartDatabase.sh /

# Open ports

EXPOSE 3306

# Final command

CMD /initAndStartDatabase.sh
