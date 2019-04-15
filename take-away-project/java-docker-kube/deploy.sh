#!/bin/bash
kubectl create -f kubernetes/shopfront-service.yaml
kubectl create -f kubernetes/productcatalogue-service.yaml
kubectl create -f kubernetes/stockmanager-service.yaml