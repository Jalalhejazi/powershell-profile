# Hvilken version af PowerShell bruger jeg ??


# Man set versions nummer i en std. variabel, kig efter PSVerion.

$PSVersionTable

$Temp = "test"

# For at starte en bestem version af PowerShell, i detter eks. 2.0

powershell -version 2.0

Get-ADAccountAuthorizationGroup