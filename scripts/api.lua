local ngx = ngx

function respond(reason, status_code)
    ngx.log(ngx.INFO, "respond method entered")
    ngx.req.read_body()
    local body = ngx.req.get_body_data()
    ngx.status = status_code
    ngx.say(body)
end

return respond("hi, you hit the api endpoint", 203)