# nginx-Proxy Entwickler-Vorlage

## Skript createProxyFromTemplate (BASH & Windows-Batch)

Das Skript <tt>createProxyFromTemplate</tt> ruft den <b>Gradle</b>-Task <tt>buildProxyFromTemplate</tt> mit den Übergabeparametern <i>proxyName</i> (für den Namen des zu erstellenden Proxies) und <i>basePath</i> (für den Basispfad der API) auf; im build/ - Verzeichnis liegen dann die für die Entwicklung vorbereiteten Proxy-Dateien

### Aufruf BASH-Skript
<tt>./createProxyFromTemplate.sh &lt;proxyName&gt; &lt;basePath&gt;</tt>
z.B. <tt>./createProxyFromTemplate.sh user /v2/user</tt>

### Aufruf Batch-Datei
<tt>createProxyFromTemplate &lt;proxyName&gt; &lt;basePath&gt;</tt>
z.B. <tt>createProxyFromTemplate user /v2/user</tt>
