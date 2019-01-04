 # Et eksempel på "ForEach" "Construct"
 #
 
<#
    $liste = Get-Service

    ForEach ( $item in $liste ) {
         Write-Host "Service navn er $($item.name)"
    }
#>


$mineFiler = dir -Recurse

ForEach( $fil in $mineFiler){
    Write-Host $fil
    if ($fil.name -like '*.pptx') {
        Write-Host "$fil er fundet og skal slettes senere..." -ForegroundColor red
        
    }

 }

