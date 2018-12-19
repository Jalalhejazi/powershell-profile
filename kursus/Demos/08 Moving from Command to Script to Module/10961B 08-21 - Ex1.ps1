 # Eksempel på kald af en kommando som forsøger at forbinde sig til flere maskiner,
 # den første "BAD" eksistere ikke og fejler derfor.
 # Ved at ændre på variablen "$ErrorActionPreference" kan man styrer hvad der sker
 # når der opstår en fejl i scriptet
 #  
 Get-WmiObject -Class Win32_Service -ComputerName BAD,localhost

 # Default vis fejl kode og fortsæt med afvikling
 
 #$ErrorActionPreference = 'Continue'

 # Vis ikke en fejlkode og fortsæt med afvikling

 #$ErrorActionPreference = 'SilentlyContinue'

 # Ved fejl stop og spørg

 #$ErrorActionPreference = 'Inquire'

 # Stop ved første fejl og vis fejlkode

 #$ErrorActionPreference = 'Stop'

 # Et bedre alternativ er at angive "-ErrorAction" til en kommando
 # den bruger sammen parametre som "$ErrorActionPreference"

 Get-WmiObject -Class Win32_Service -ComputerName BAD,localhost -ErrorAction Stop


