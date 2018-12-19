# Eksempel på valg af et begrænset antal objekter.


## SQL SELECT destinct TOP 10 ALL  FROM PROCESS ORDER By VM

Get-Process | Sort-Object -Property VM -unique | Select-Object -Property * -First 10


Get-Service | Sort-Object -Property Name | Select-Object -Last 10


Get-Process | Sort-Object -Property CPU -Descending | Select-Object -First 5 -Skip 1

