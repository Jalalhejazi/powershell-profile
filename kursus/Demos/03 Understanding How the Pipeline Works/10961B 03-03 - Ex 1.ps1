# Her bliver noget af type string sendt ind i pipen
# Det matcher -Name parameter på Get-Service som forstår Object typen String

'BITS','WinRM' | Get-Service

# Hvis man er i tvivl om typen af det som bliver sendt ind i pipen
# kan man prøve med følgende kommando

'BITS','WinRM' | Get-Member
