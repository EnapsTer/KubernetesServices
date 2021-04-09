FROM alpine:3.12.3

# installing packages
RUN apk update
RUN apk add mysql mysql-client openrc libc6-compat supervisor

# setup telegraph
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.18.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.18.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.18.0_linux_amd64.tar.gz
COPY ./telegraf.conf /etc/telegraf/

# setup supervisord
COPY ./supervisord.conf /etc/

# setup mysql database
COPY ./create_db.sql /
COPY ./mysql-service.sql /
COPY ./my.cnf /etc/
COPY ./db_init.sh /

# open ports
EXPOSE 3306

# database initialization and start
CMD /db_init.sh
