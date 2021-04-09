#!/bin/sh
# Starting minikube

minikube --driver=virtualbox --memory='3000' --disk-size 20000MB start

# Adding addons
minikube addons enable dashboard
minikube addons enable metallb

# Prepare docker
eval $(minikube docker-env)

# Building docker-images
docker build -t nginx srcs/nginx/
docker build -t phpmyadmin srcs/phpmyadmin/
docker build -t wordpress srcs/wordpress/
docker build -t mysql srcs/mysql/
docker build -t influxdb srcs/influxdb/
docker build -t grafana srcs/grafana/
docker build -t ftps srcs/ftps/

#Starting services
kubectl apply -f srcs/metallb/metallb.yaml
kubectl apply -f srcs/nginx/nginx.yaml
kubectl apply -f srcs/influxdb/influxdb.yaml
kubectl apply -f srcs/mysql/mysql.yaml
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml
kubectl apply -f srcs/wordpress/wordpress.yaml
kubectl apply -f srcs/grafana/grafana.yaml
kubectl apply -f srcs/ftps/ftps.yaml

sleep 20
kubectl get pods

# Starting dashboard
minikube dashboard
