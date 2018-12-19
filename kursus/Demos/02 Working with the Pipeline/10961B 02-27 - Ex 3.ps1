# Det kan man ikke

Get-Service | Where { $PSItem.Status -eq 'Running' -or 'Starting' }

# Men det kan man godt

Get-Service | Where { $PSItem.Status -eq 'Running' -or $PSItem.Status -eq 'Starting' }