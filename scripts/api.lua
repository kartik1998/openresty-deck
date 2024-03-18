function respond(reason, status_code)
    ngx.status = status_code
    ngx.say(reason)
end

return respond("hi, you hit the api endpoint", 203)