#! /bin/bash

docker pull registry.webuy.com/mywebserver:latest

docker run -d -p 5000:80 --name testcont registry.webuy.com/mywebserver:latest