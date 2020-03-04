-- global config

local function create_url(protocol,domain,port,path)
    return protocol..'://'..domain..(80==tonumber(port) and "" or ":"..port)..(nil==path and '' or path)
end
local _M = {}

_M.debug = true

_M.mysql = {
    host = "100.65.203.225",
    port = 3521,
    database = "dn_playrule",
    user = "dn_playrule",
    password = "9b4c2b154",
    --host = "10.55.142.69",
    --port = 5159,
    --database = "qqvideo_test",
    --user = "qqvideo_test",
    --password = "955c9a808",
    charset = "utf-8",
    max_packet_size = 1024 * 1024
}

_M.redis = {
	host="127.0.0.1",
    port = 6379
}

_M.host= {
    domain="localhost",
    port=6000,
    protocol='http'
}
_M.host.url = create_url(_M.host.protocol,_M.host.domain,_M.host.port)


return _M
