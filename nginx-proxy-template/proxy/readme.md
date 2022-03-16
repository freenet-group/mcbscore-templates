# nginx-md-{proxyName}-proxy

Dieses Repoistory enthält die Sourcen für den {proxyName}-nginx-proxy.


## (Docker)-Skripte zum Testen des Proxies

### LINUX/UNIX
#### build.sh
Startet einen Docker-Conatiner (Dockerfile), führt den nginx-Konfigurationstest durch und baut die *-tar.gz - Artefakte.

### run.sh
Baut und startet einen Docker-Conatiner (Dockerfile-Local), Zugriff auf die API dann lokal über http://localhost:11000{basePath}

#### test.sh
Wird im Docker-Container ausgeführt und führt den nginx-Konfigurationstest durch.

### Windows
#### build.bat
Baut das Docker-Image (über Dockerfile-Local).

### buildArtifacts.bat (entspricht build.sh)
Startet einen Docker-Conatiner (Dockerfile), führt den nginx-Konfigurationstest durch und baut die *-tar.gz - Artefakte (tar muss als Anwendung vrohanden sein).

#### remove.bat
Entfernt den Docker-Container.

### restart.bat
Führt einen Neustart des Docker-Containers durch.

#### run.bat
Startet einen Docker-Container (build.bat muss vorher gelaufen sein), Zugriff auf die API dann lokal über http://localhost:11000{basePath}

#### stop.bat
Stoppt den Docker-Conatiner.
