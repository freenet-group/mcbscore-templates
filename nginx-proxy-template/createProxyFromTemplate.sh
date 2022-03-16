# erstellt einen nginx-Proxy für md und klarmobil zur Entwicklung aus der Vorlage
# Übergabeparameter: <Proxyname> <Basispfad der API>

proxyName=$1
basePath=$2

if [ $# -lt 2 ]; then
    echo "USAGE: $0 <proxyName> <basePath>"
    echo "Exanple: $0 rating /v1/rating"
    exit 1
fi

./gradlew clean buildProxyFromTemplate -PproxyName=$proxyName -PbasePath=$basePath

echo "Fertig. Dateien liegen in build/"

