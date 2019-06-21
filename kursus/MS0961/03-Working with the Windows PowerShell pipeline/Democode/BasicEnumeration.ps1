# 1
Get-Service | ForEach Name

# 2
Get-EventLog –List | Where Log –eq 'System' | ForEach Clear

