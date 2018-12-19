
param(
   [string] $search  = 'AppInfo'
)


$fil    = "$pwd\Service-" + $search + ".txt"

$data = Get-Service -Name $search 

## TODO
## IF --> 

    $data | 
    Select *    |
    Out-File  $fil 
    ISE $fil