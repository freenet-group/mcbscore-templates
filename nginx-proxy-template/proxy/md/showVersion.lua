-- proxy- und ms-Version zurückgeben
-- (c) 2020 mobilcom-debitel GmbH

local cjson = require 'cjson'
local res = ngx.location.capture("{basePath}/localInternal/info");

ngx.status = ngx.HTTP_OK

if res.status == ngx.HTTP_OK then
    local resBodyJson = cjson.decode(res.body)
    ngx.say(cjson.encode({
        api = resBodyJson.build.version,
        serviceName = '{proxyName}-api',
        proxy = ngx.var.proxy_version,
        microservice = resBodyJson.build.version,
        version = resBodyJson.build.version
    }))
else
   ngx.say(cjson.encode({
       proxy = ngx.var.proxy_version
   }))
end

ngx.exit(ngx.HTTP_OK)