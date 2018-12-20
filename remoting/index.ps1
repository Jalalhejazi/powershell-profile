<#

    .EXAMPLE
    windows-remote-connect -ComputerName jalal-pc.su.int -UserName su\jalal -setup
    
    .EXAMPLE
    windows-remote-connect -ComputerName jalal-pc.su.int -UserName su\jalal


#>

function windows-remote-connect {
    [CmdletBinding()]
    param(
        
        [Parameter(Mandatory = $true)] [string] $ComputerName ,
        [Parameter(Mandatory = $true)] [string] $UserName   ,
        [Parameter(Mandatory = $false)][switch] $setup    
    )

    if ($setup) {
     Enable-PSRemoting -SkipNetworkProfileCheck -Force
     set-item wsman:\localhost\Client\TrustedHosts -value * -Force
    }

    $login  = New-PSSession -Credential $UserName -ComputerName $ComputerName

    Enter-PSSession -Session $login
}