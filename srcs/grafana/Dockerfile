FROM alpine:3.12.3
# TODO полностью разобрать graphana
# installing required packages.
RUN apk update
RUN apk add	libc6-compat supervisor

# installing telegraf
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.18.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.18.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.18.0_linux_amd64.tar.gz
COPY src/telegraf.conf /etc/telegraf/

# installing grafana
RUN wget https://dl.grafana.com/enterprise/release/grafana-enterprise-7.3.6.linux-amd64.tar.gz
RUN tar -xf grafana-enterprise-7.3.6.linux-amd64.tar.gz --strip-components=1 -C /
RUN rm grafana-enterprise-7.3.6.linux-amd64.tar.gz
COPY src/grafana.db /data/

# setup  supervisord
COPY src/supervisord.conf /etc/

# open ports
EXPOSE 3000

# start supervisord
CMD supervisord
