#!/bin/bash

cd shopfront
mvn clean install
docker build -t adityaprabhakara/shopfront:1.0 -t adityaprabhakara/shopfront:latest .
docker push adityaprabhakara/shopfront
cd ..
cd productcatalogue
mvn clean install
docker build -t adityaprabhakara/productcatalogue:1.0 -t adityaprabhakara/productcatalogue:latest .
docker push adityaprabhakara/productcatalogue
cd ..
cd stockmanager
mvn clean install
docker build -t adityaprabhakara/stockmanager:1.0 -t adityaprabhakara/stockmanager:latest .
docker push adityaprabhakara/stockmanager
cd ..

