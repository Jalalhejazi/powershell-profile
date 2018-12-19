 # Et eksempel på "if" "Construct"
 #
 
param(
    $alder = (Read-Host 'Skriv Alder mellem 18-30') ,
    $navn =  (Read-Host 'Angiv dit navn') 
)

  If ($alder -eq 18) {
        Write-Host "Alderen er $alder"
    } Elseif ($alder -eq 20) {
        Write-Host "Alderen er $alder"
    } Elseif ($alder -eq 30) {
        Write-Host "Alderen er $alder"
    } Else {
        Write-Host "Alderen ikke 18,20 eller 30 den er $alder"
    }
