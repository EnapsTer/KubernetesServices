#!/bin/sh

# Starting minikube

minikube --driver=virtualbox --memory='3000' --disk-size 20000MB start

# -----------------

# Adding addons

minikube addons enable dashboard
minikube addons enable metallb

# -----------------

# Prepare dokcer

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
