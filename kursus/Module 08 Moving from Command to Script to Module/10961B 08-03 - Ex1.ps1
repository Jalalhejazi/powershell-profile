# Et eksempel på et PowerShell script med parametre, 
# i Param() blokken definerer man de parametre som man ønsker
# at kunne overføre til scriptet når man afvikler det.
#
# Det er ikke nødvendig at angive en data type f.eks. "string" eller "int"
# men en god ide.
#
# man kan angive om en parameter er obligatorisk "Mandatory=$True",
# man kan også angive en standard værdi for en parameter, "$EventID = 4624"
#
# Parametre overføres til variable som man kan kalde hvad man vil,
# men der er en god ide at give dem navne som matcher det de bruges til.
#   

## nedarvning fra dotnet frameworket

Param(

[string]$ComputerName = 'localhost',

[int]$EventID = 4624
)
Get-EventLog -LogName Security -ComputerName $ComputerName |
Where EventID -eq $EventID |
Select -First 50

###  step 2
