# Hvilken version af PowerShell bruger jeg ??


# Man set versions nummer i en std. variabel, kig efter PSVerion.

$PSVersionTable

$Temp = "test"

# For at starte en bestem version af PowerShell, i detter eks. 2.0

# for at kunne starte version 2
# at dotnet version 2.x skal være installeret
# dotnet.core --> OpenSource --> pwsh linux
powershell -version 2.0

Get-ADAccountAuthorizationGroup