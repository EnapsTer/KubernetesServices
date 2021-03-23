#!/bin/sh

kubectl delete -f srcs/nginx/nginx.yaml
kubectl delete -f srcs/wordpress/wordpress.yaml
kubectl delete -f srcs/mysql/mysql.yaml
kubectl delete -f srcs/phpmyadmin/phpmyadmin.yaml
kubectl delete -f srcs/influxdb/influxdb.yaml
kubectl delete -f srcs/grafana/grafana.yaml
kubectl delete -f srcs/ftps/ftps.yaml

sleep 30

kubectl get pods
