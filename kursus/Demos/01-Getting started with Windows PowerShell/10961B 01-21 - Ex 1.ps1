#Eksempler på angivelse af flere værdier for en parameter.

Get-EventLog -LogName Application -ComputerName LON-CL1,LON-DC1

Get-EventLog -LogName Application -ComputerName (Get-Content C:\computers.txt)

$names = Get-Content C:\computers.txt
Get-EventLog -LogName Application -ComputerName $names


