
app['/field/:op'] = function(params)
    ngx.say("op:"..params.op)
    local args = ngx.req.get_uri_args()
    local fname, fvalue = args['name'], args['value']
    ngx.say('field name:', fname, " value:", fvalue)
end
