# Sådan 

Get-Process | where { $PSItem.Responding -eq $True }

# Eller sådan

Get-Process | where { $PSItem.Responding }

# Eller omvendt

Get-Process | where { -not $PSItem.Responding }

# Eller sådan

Get-Process | where { $PSItem.Responding -eq $False }

