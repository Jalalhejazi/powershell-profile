<#

    .EXAMPLE
    windows-remote-connect -ComputerName 192.168.8.101 -UserName kursist -setup
    
    
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
    
    $ErrorActionPreference = 'SilentlyContinue'

    if ($setup) {
     Get-NetConnectionProfile | Set-NetConnectionProfile -NetworkCategory Private
     Enable-PSRemoting -SkipNetworkProfileCheck -Force
     set-item wsman:\localhost\Client\TrustedHosts -value * -Force
    }

    $login  = New-PSSession -Credential $UserName -ComputerName $ComputerName

    Enter-PSSession -Session $login
}