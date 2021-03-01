#!/bin/bash

sudo docker run --name database_postgres -e POSTGRES_PASSWORD=docker -p 5432:5432 -d postgres

sudo docker run --name database_mongo -p 27017:27017 -d -t mongo

sudo docker run --name database_redis -p 6379:6379 -d -t redis:alpine
