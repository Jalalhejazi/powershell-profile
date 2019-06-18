function get-kursister {
<#

    .EXAMPLE

    goto-kursus
    cd opgaver
    . .\opgave01.ps1
    help get-kursister -example


    .EXAMPLE
        
        get-kursister -kursusNummer su0530 -dato 20190617
    
    .EXAMPLE

        get-kursister -kursusNummer ms0961 -dato 20190617

    .EXAMPLE

        get-kursister -kursusNummer ms0961 

#>

    param(
        $kursusNummer,
        $dato = (Get-Date -Format "yyyyMMdd")
    )
    
    $ErrorActionPreference = 'SilentlyContinue'

    $remoteAddress = "http://eval.superusers.dk/api/v1/kursister/$kursusNummer/158/$dato"

    $data = (Invoke-RestMethod -Uri $remoteAddress).data

    $data  

}


