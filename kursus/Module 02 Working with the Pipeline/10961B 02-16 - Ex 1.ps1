Get-Command -Verb ConvertTo,Export

Get-Service | ConvertTo-Csv | Out-File c:\Services.csv

Get-Service | Export-Csv c:\Services.csv

