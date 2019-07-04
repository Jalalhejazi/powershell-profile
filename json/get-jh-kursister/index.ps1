function get-jh-kursister {
    <#

    .EXAMPLE
        
    $k_3dage = get-jh-kursister -kursusNummer su0530 
    $k_2dage = get-jh-kursister -kursusNummer su0531 
    $k_5dage = get-jh-kursister -kursusNummer ms0961 
    
    $mandag_til_onsdag  = $k_5dage + $k_3dage | sort firma_navn
    $torsdag_til_fredag = $k_5dage + $k_2dage | sort firma_navn

    .EXAMPLE
    
    get-jh-kursister -kursusNummer ms0979 -dato 20190624

    .EXAMPLE
    
    get-jh-kursister -kursusNummer SU0072 -dato 20190701 | ConvertTo-Json

#>

    param(
        $kursusNummer,
        $dato = (Get-Date -Format "yyyyMMdd")
    )
    
    $ErrorActionPreference = 'SilentlyContinue'

    # private service kun indenfor Karlebogaard bygning
    $remoteAddress = "http://eval.superusers.dk/api/v1/kursister/$kursusNummer/158/$dato"
    
    $data = (Invoke-RestMethod -Uri $remoteAddress).data

    $data | select kursistID, person_Navn, firma_navn  

}


# 

function get-jh-kurser {
    param(
        $dato = (Get-Date -Format "yyyyMM")
    )
    
    $ErrorActionPreference = 'SilentlyContinue'

    $remoteAddress = "http://service.superusers.dk/DataService/Kalender/jh?kursus_dato=$dato&format=json"
    
    $data = (Invoke-RestMethod -Uri $remoteAddress).KalenderList

    # $data | SELECT kursus_nummer + ' ' + kursus_titel, kursus_lokale, kursus_dage,kursus_dato      

    $data | select @{Name="Kursus"; E={$psitem.kursus_dato + ' ' + $psitem.kursus_lokale + ' '  + $psitem.kursus_nummer + ' ' + $psitem.kursus_titel}  }
}

