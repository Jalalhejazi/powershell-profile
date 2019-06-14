
function powershell-update-help  {
    Update-Help -Force -ErrorAction SilentlyContinue
} 

function get-jh-kursister {
<#

    .EXAMPLE
        
        get-jh-kursister -kursusNummer su0530 -dato 20190617
        get-jh-kursister -kursusNummer ms0961 -dato 20190617

#>

    param(
        $kursusNummer,
        $dato = (Get-Date -Format "yyyyMMdd")
    )
    
    $ErrorActionPreference  = 'SilentlyContinue'

    $remoteAddress="http://eval.superusers.dk/api/v1/kursister/$kursusNummer/158/$dato"

    $data = (Invoke-RestMethod -Uri $remoteAddress).data

   <# 
    foreach ($d in $data) {
        write-output ("`n", $d.person_Navn ,  $d.firma_navn)
    }
    #>

    $data | select kursistID, person_Navn, firma_navn

}