function get-public-IP-address {
  (Invoke-WebRequest -Uri https://api.ipify.org).Content.trim()

  ## or using "http -b ifconfig.co/json"
}


function get-private-IP-address {
# Works for Linux, MacOS and Windows
# When using cross-platform powershell (pwsh)

## ipconfig | grep IPv4 | sort


$IP = if ($IsLinux -or $IsMacOS) {
    $ipInfo = ifconfig | Select-String 'inet'
    $ipInfo = [regex]::matches($ipInfo,"addr:\b(?:\d{1,3}\.){3}\d{1,3}\b") | ForEach-Object value
    foreach ($ip in $ipInfo) {
        $ip.Replace('addr:','')
    }
}
else {
    Get-NetIPAddress | Where-Object {$_.AddressFamily -eq 'IPv4'} | ForEach-Object IPAddress
}

# Remove loopback address from output regardless of platform
$IP | Where-Object {$_ -ne '127.0.0.1'}


}