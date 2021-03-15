$param = @{
    Uri         = "http://10.0.0.253:12201/gelf"
    Method      = "Post"
    Body        = '{"version":"1.1","host":"dominoes","short_message":"more pizza?","level":"5"}'
    ContentType = "application/json"
}
Invoke-RestMethod @param
