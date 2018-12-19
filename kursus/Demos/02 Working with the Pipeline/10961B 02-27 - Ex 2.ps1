# Det kan man ikke :-)

 Get-Process | where { $PSItem.CPU -gt 30 -and VM -lt 10000 }
 
# Men det kan man godt
 
 Get-Process | where { $PSItem.CPU -gt 30 -and $PSItem.VM -lt 10000 }