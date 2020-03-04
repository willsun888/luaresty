local mysql = require "service.mysql"
local cjson = require "cjson"

local _M = {}

function _M.get_default_defn_rule_fields()
    local rows = mysql.q('select condition_fields,result_fields,ctime,mtime from t_vplay_field where ftable="default_defn_rule"')
    return rows
end

return _M
