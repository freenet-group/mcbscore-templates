:: erstellt einen nginx-Proxy für md und klarmobil zur Entwicklung aus der Vorlage
:: Übergabeparameter: <Proxyname> <Basispfad der API>
@echo off

set proxyName=%1
set basePath=%2

IF "%basePath%" == "" (
    echo USAGE: %0 {proxyName} {basePath}
    echo Example: %0 rating /v1/rating
    exit /B 1
)

gradlew clean buildProxyFromTemplate -PproxyName=%proxyName% -PbasePath=%basePath%