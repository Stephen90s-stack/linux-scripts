#! /bin/bash

docker run -it --rm -d -p 8080:80 --name web nginx

docker commit web newimage

docker save newimage | gzip > myimage_latest.tar.gz

docker tag newimage registry.webuy.com/mywebserver:test

docker push registry.webuy.com/mywebserver:test