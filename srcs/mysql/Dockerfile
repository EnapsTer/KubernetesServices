FROM alpine:3.12.3

# installing packages
RUN apk update
RUN apk add mysql mysql-client openrc libc6-compat supervisor

# setup telegraph
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.18.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.18.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.18.0_linux_amd64.tar.gz
COPY src/telegraf.conf /etc/telegraf/

# setup supervisord
COPY src/supervisord.conf /etc/

# setup mysql database
COPY src/create_db.sql /
COPY src/mysql-service.sql /
COPY src/my.cnf /etc/
COPY src/db_init.sh /

# open ports
EXPOSE 3306

# database initialization and start
CMD /db_init.sh
