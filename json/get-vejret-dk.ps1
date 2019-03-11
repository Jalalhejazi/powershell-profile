function get-vejret-dk {
<#
.DESCRIPTION
    Get Information about Danish weather

.EXAMPLE
    get-vejret-dk 

.EXAMPLE
    get-vejret-dk -bynavn Hillerød

.EXAMPLE
    (get-vejret-dk).CurrentData

.EXAMPLE
    (get-vejret-dk).CurrentData.temperature

#>
    param (
        [string]$byNavn = "copenhagen"
    )

    $remoteAddress = "http://vejr.eu/api.php?location=$byNavn&degree=C"
    $data    = Invoke-RestMethod -Uri $remoteAddress

    write-output $data
}




function get-temperatur-dk {
<#
.DESCRIPTION
    Get Celsius degree 

.EXAMPLE
    get-temperatur-dk 

#>
    param (
        [string]$byNavn = "copenhagen"
    )

    $temperatur = (get-vejret-dk $bynavn).CurrentData.temperature
    
    write-output "$byNavn ($temperatur) "
}