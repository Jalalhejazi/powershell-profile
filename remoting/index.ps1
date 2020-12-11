

function windows-remote-connect {
<#

TODO
https://www.hanselman.com/blog/how-to-ssh-into-a-windows-10-machine-from-linux-or-windows-or-anywhere

.EXAMPLE
windows-remote-connect -ComputerName 192.168.8.101 -UserName kursist -setup


.EXAMPLE
windows-remote-connect -ComputerName jalal-pc.su.int -UserName su\jalal


#>
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



function connect-to {
    param(
        $server
    )
    $port   = "3389" 
    Start-Process "mstsc" -ArgumentList "/V:$server`:$port /fullscreen /admin " 
}
    




function connect-to-linux {
    ssh user@machine0.superusers.dk 
}
    