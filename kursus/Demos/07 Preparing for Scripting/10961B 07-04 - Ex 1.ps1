
# Assigning af værdi i en variable
# Det som står på højre side af "=" tegnet vil blive forsøgt afviklet og resultatet vil blive
# forsøgt placeret i det på venstre side af "=".


$services = Get-Service | where Status -eq 'Running' | Sort Name -Descending

$services

$today = Get-Date

$today

# Hvis man gerne vil se de variable som finde på et givent tidspunkt inklusiv
# dem som er indbygget i PowerShell kan man bruge følgende kommandoer.

Dir VARIABLE:

Get-Variable