
$data = Get-Content './data.json' | ConvertFrom-Json 

foreach ($x in $data) {
    $x | select personNavn, 
                personTitel , 
                @{Expression={$PSItem.adresse.vejnavn}; Name="vejNavn"},
                @{Expression={$PSItem.adresse.postNummer}; Name="postNummer"}
} 
