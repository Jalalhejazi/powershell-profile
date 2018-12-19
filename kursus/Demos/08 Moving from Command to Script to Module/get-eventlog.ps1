<#
.SYNOPSIS
     Get-EventLog-v2 henter fra eventloggen security de første 50 rækker

.DESCRIPTION
       blabla... 

.PARAMETER EventID
        default er der brugt 4624 ....

.EXAMPLE 
          Get-EventLog-v2 

.EXAMPLE 
          Get-EventLog-v2 -rows 10

.EXAMPLE 
          Get-EventLog-v2 -rows 10 -ErrorAction stop
#>

## Alt hvad dotnet version CLRVersion (4.0.30319.42000)
function Get-EventLog-v2 {
    [CmdletBinding()]
    param
    (
        $EventID = 4624 ,
        $rows    = 50,
        $LogName = 'Security'
    )

    Get-EventLog -LogName  $LogName  |
    Where EventID -eq $EventID |
    select -First $rows
}
