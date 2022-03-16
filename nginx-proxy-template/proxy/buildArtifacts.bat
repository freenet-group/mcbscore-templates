::nginx in Docker starten und Konfiguration testen
docker rmi nginx-md-{proxyName}-proxy -f || echo ""
docker rm -f nginx-md-{proxyName}-proxy || echo ""
docker build . -t nginx-md-{proxyName}-proxy --no-cache --pull
docker run  --name nginx-md-{proxyName}-proxy -v %cd%\targetservers-build:/etc/nginx/targetservers -t nginx-md-{proxyName}-proxy bash /etc/nginx/test.sh

::Artefakte für md-{proxyName} und km-{proxyName} bauen (tar muss als Anwendung vorhanden sein)
tar cfzv nginx-md-{proxyName}-proxy.tar.gz --exclude=.keep md-{proxyName}
tar cfzv nginx-km-{proxyName}-proxy.tar.gz --exclude=.keep km-{proxyName}