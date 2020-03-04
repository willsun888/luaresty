

app['/user/:name'] = function(params)
    ngx.say("name:"..params.name);
end
