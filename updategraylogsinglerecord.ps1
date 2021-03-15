

Get-EventLog system | select -First 1 | ForEach-Object {
$i = $($_.Index)
$t = $($_.Time)
$et = $($_.EntryType)
$s = $($_.Source)
$iid = $($_.InstanceID)
$m = $($_.Message)

Write-Host "message = $m"

$h = "dominoes8"

$param = @{
    Uri         = "http://10.0.0.253:12201/gelf"
    Method      = "Post"
    Body        = '{"version":"1.1","host":"' + $h  +  '","short_message":"' + $m + '","level":"5","EntryType":"' + $et + '","EventSource":"' + $s + '"}'
    ContentType = "application/json"
}


Invoke-RestMethod @param

}



