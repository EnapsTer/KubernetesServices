#!/bin/sh
#TODO сделать минимум sh
#TODO попросить подушить
# Starting minikube

minikube --driver=virtualbox --memory='3000' --disk-size 20000MB start

# -----------------

# Adding addons

minikube addons enable dashboard
minikube addons enable metallb

# -----------------

# Prepare docker

eval $(minikube docker-env)

# -----------------

# Building docker-images

srcs/build_all.sh

# -----------------

# Starting services

srcs/startServices.sh

# -----------------

# Starting dashboard

#minikube dashboard

# -----------------
