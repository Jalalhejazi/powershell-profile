 # Et eksempel på "Switch" "Construct"
 #
 # Værdi 4 viser at flere godt kan matche.
 # Værdi 5 viser at break afbryder switch.
 
 $var = Read-Host 'Skriv værdi mellem 1-5'

switch ( $var ) {
    1 { Write-Host "Værdien er $var" }
    4 { Write-Host "Værdien er $var først match" }
    5 { 
        Write-Host "Værdien er $var først match"
        break
      }
    2 { Write-Host "Værdien er $var" }
    3 { Write-Host "Værdien er $var" }
    4 { Write-Host "Værdien er $var andet match" }
    5 { Write-Host "Værdien er $var andet match" }
    Default { Write-Host "Værdien var ikke 1,2,3,4 eller 5 den er $var" }
}