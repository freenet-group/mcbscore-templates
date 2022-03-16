#!/usr/bin/env bash
docker rmi md-{proxyName}-proxy -f || echo ""
docker rm -f md-{proxyName}-proxy || echo ""
docker build -f ./Dockerfile-Local -t md-{proxyName}-proxy --no-cache
docker run --name md-{proxyName}-proxy -d -p 11000:11000 -v ${PWD}/md-{proxyName}:/etc/nginx/proxies/md/md-{proxyName} -v ${PWD}/logs:/var/log/proxies/md-{proxyName} -v ${PWD}/targetservers-local:/etc/nginx/targetservers md-{proxyName}-proxy