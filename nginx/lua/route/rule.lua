
local rule = require "service.rule"
local cjson = require "cjson"

app['/rule/default_defn/:op'] = function(params)
    local op = params.op
    if op == "list" then
        local rows = rule.get_default_defn_rule_list()
        print(rows)
        local res = {code=0,msg='ok',data=rows}
        ngx.say(cjson.encode(res))
    elseif op == "add" then
    else 
        ngx.say('invalid op')
    end
end

app['/rule/default_defn_detail/:id'] = function(params)
    local id = params.id
    local rows = rule.get_default_defn_rule_detail(id)
    local res = {code=0,msg='ok',data=rows}
    ngx.say(cjson.encode(res))
end
