<#
    1. Læser indholdet af en json fil fra harddisken
    2. Convert fra json til powershell object
    3. foreach --> loop for hvert række i en array
    4. select kolonner fra alle niveauer 
#>

# data kan også komme fra internet via REST API Services
$data = Get-Content './data.json' | ConvertFrom-Json 

foreach ($x in $data) {
    $x | Select-Object  personNavn, 
                        personTitel , 
                        @{Expression={$PSItem.adresse.vejnavn + ' ' + $PSItem.adresse.husNummer}; Name="VejNavn"},
                        @{Expression={$PSItem.adresse.postNummer}  ; Name="PostNummer"}
                        
} 
