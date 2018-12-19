
## Find alle PC i nærheden hvor IP Adress starter med 192.168.6.* 
Get-NetNeighbor | Where {  $_.IPAddress -like "192.168.6.*" } | select IPAddress