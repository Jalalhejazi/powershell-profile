
function powershell-update-help {
    Update-Help -Force -ErrorAction SilentlyContinue
} 

function get-jh-kursister {
    <#

    .EXAMPLE
        
        $k_3dage = get-jh-kursister -kursusNummer su0530 -dato 20190617
        $k_2dage = get-jh-kursister -kursusNummer su0531 -dato 20190617
        $k_5dage = get-jh-kursister -kursusNummer ms0961 -dato 20190617

        $k_5dage + $k_2dage | sort firma_navn


#>

    param(
        $kursusNummer,
        $dato = (Get-Date -Format "yyyyMMdd")
    )
    
    $ErrorActionPreference = 'SilentlyContinue'

    $remoteAddress = "http://eval.superusers.dk/api/v1/kursister/$kursusNummer/158/$dato"

    $data = (Invoke-RestMethod -Uri $remoteAddress).data

    $data | select kursistID, person_Navn, firma_navn  

}
