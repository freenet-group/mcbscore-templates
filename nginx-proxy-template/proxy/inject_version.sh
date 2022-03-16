if [[ "$1" != "" ]]; then
	sed -i "s/version=\".*\"/version=\"$1\"/g" Dockerfile
	sed -i "s/set \$proxy_version \".*\"/set \$proxy_version \"$1\"/g" md-{proxyName}/version.conf
fi

dockerVersion=$(grep "version" Dockerfile)
echo "${dockerVersion:6}">version.properties
sed -i s/\"//g version.properties
