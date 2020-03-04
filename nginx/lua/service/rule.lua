local mysql = require "service.mysql"
local cjson = require "cjson"

local _M = {}

function _M.get_default_defn_rule_list()
    local rows = mysql.q('select id,rule,attrid,prodFlag,testFlag,activeFlag,priority,title,creator,ctime,mtime from t_vplay_rule where ftable = "default_defn_rule"')
    return rows
end

function _M.get_default_defn_rule_detail(id)
    local rows = mysql.q('select id,title,rule from t_vplay_rule where id = '..tostring(id))
    return rows
end


return _M
