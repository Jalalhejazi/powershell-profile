# Eksempel på kommando med med fuld syntax, PowerShell er normalt ikke "case sensetive",
# men det kan være nemmere at læse of forstå hvis man bruger store og små bokstaver.

# Man kan bruge [tab] for at lette indtastning og samtidig få store og små bokstaver
# de rigtige steder :-)

Get-EventLog -LogName Application -Newest 10 -ComputerName localHost

