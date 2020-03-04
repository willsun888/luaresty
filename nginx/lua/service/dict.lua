local mysql = require "service.mysql"
local cjson = require "cjson"

local _M = {}

function _M.get_plats()
    local rows = mysql.q('select id,platforms,mark,ctime,mtime from t_vplay_dict_platform')
    return rows
end

return _M
