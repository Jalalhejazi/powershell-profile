Get-Service | Where status -eq Running

# Kan også skrive sådan og give samme resultat, men er mere flexibel

Get-Service | Where-Object -FilterScript { $PSItem.Status -eq 'Running' -or $PSItem.Status -eq 'Starting'}

# Kan også forkortes sådan:

# $PSItem --> virker fra version 4 
Get-Service | Where { $PSItem.Status -eq 'Running' }

# Eller sådan:

# $_ --> virker helt tilbage fra version 1.0 

Get-Service | ? { $_.Status -eq 'Running' }




<# 
    SELECT fornavn, efternavn
    from Person 
    where personID = 10
    order by efternavn



    GET-PERSON                      | 
    where { $_.personID -eq 10 }    |    
    select fornavn, efternavn       |
    sort efternavn



#>