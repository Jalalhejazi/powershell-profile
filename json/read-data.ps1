$data = Get-Content './data.json' | ConvertFrom-Json 

foreach ($x in $data) {
    $x | Select-Object  personNavn, 
                        personTitel , 
                        @{Expression={$PSItem.adresse.vejnavn}; Name="vejNavn"},
                        @{Expression={$PSItem.adresse.postNummer}; Name="postNummer"}
} 
