
local dict = require "service.dict"
local cjson = require "cjson"

app['/dict/platform/:op'] = function(params)
    local op = params.op
    if op == "list" then
        local rows = dict.get_plats()
        local res = {code=0,msg='ok',data=rows}
        ngx.say(cjson.encode(res))
    elseif op == "add" then
        local args = ngx.req.get_uri_args()
        local plats, mark = args['platforms'], args['mark']
        ngx.say('plats:', plats, " mark:", mark)
    else 
        ngx.say('invalid op')
    end
end
