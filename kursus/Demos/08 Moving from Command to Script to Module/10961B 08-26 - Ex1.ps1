 # Et eksempel på "if" "Construct"
 #
 $min = 18
 $max = 50
param(
    $alder = (Read-Host "Skriv Alder mellem $min-$max") ,
    $navn =  (Read-Host 'Angiv dit navn') 
)

  If ($alder -eq $min) {
        Write-Host "Alderen er $alder"
    } Elseif ($alder -eq 20) {
        Write-Host "Alderen er $alder"
    } Elseif ($alder -eq 30) {
        Write-Host "Alderen er $alder"
    } Else {
        Write-Host "Alderen ikke mellem $min og $max! den er $alder"
    }
