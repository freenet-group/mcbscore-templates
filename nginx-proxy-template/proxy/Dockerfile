FROM docker.mobilcom.de/nginx-plus/nginx-api
LABEL author="tp.sd.back.mcbs@freenet.ag"
LABEL version="1.0.0"
WORKDIR /etc/nginx

COPY km-{proxyName} /etc/nginx/proxies/klarmobil/km-{proxyName}
COPY md-{proxyName} /etc/nginx/proxies/md/md-{proxyName}
COPY test.sh /etc/nginx

RUN mkdir -p /var/log/proxies/km-{proxyName}; mkdir -p /var/log/proxies/md-{proxyName};dos2unix /etc/nginx/proxies/klarmobil/km-{proxyName}/*;dos2unix /etc/nginx/proxies/md/md-{proxyName}/* ;dos2unix /etc/nginx/test.sh
