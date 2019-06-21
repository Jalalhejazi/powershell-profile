
param (
    [string]$kursusNummer = "SU0530"
)
        
function kursus-hentInfo {
    $remoteAddress = "https://service.superusers.dk/DataService/Kursus/Beskrivelse/?TeknologiPrimary=1&KursusNummer=$kursusNummer&format=json"
    $kursusData    = (Invoke-RestMethod -Uri $remoteAddress).KursusBeskrivelse[0]

    write-output $kursusData

}



kursus-hentInfo


<#
     Kan kaldes på flere måder :-)

    . .\kursus-hentInfo.ps1 
    . .\kursus-hentInfo.ps1 -kursusNummer su0531 | select *
    . .\kursus-hentInfo.ps1 -kursusNummer ms0961 | select kursusNummer , kursusTitel ,  kategori , ratingAvg

#>