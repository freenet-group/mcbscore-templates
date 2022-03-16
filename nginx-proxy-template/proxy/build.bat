docker pull docker.mobilcom.de/nginx-plus/nginx-api:latest
docker rmi nginx-md-{proxyName}-proxy -f || echo ""
docker rm -f nginx-md-{proxyName}-proxy || echo ""
docker build . -f ./Dockerfile-Local -t nginx-md-{proxyName}-proxy --no-cache
