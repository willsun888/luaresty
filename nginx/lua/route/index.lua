local _ = require('resty.underscore')
local log = require('resty.log')
app['/'] = function()
    log.info("enter index")
	O.render('index.html')
end
