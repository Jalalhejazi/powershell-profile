

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


function connect-to-windows {
<#
.DESCRIPTION
    https://www.hanselman.com/blog/how-to-ssh-into-a-windows-10-machine-from-linux-or-windows-or-anywhere

.EXAMPLE
connect-to-windows -ComputerName 192.168.8.101 -UserName kursist -setup

.EXAMPLE
connect-to-windows -ComputerName dev2020.westeurope.cloudapp.azure.com -UserName sysadmin

#>
        
    [CmdletBinding()]
    param(
        
        [Parameter(Mandatory = $true)] [string] $ComputerName,
        [Parameter(Mandatory = $true)] [string] $UserName,
        [Parameter(Mandatory = $false)][switch] $setup    
    )
    
    $ErrorActionPreference = 'SilentlyContinue'

    if ($setup) {
        # The setup must be configured on the remote side (not client side)
        Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
        Set-Service -Name sshd -StartupType 'Automatic'
        Start-Service sshd
        New-ItemProperty -Path "HKLM:\SOFTWARE\OpenSSH" -Name DefaultShell -Value "C:\Program Files\PowerShell\7\pwsh.exe" -PropertyType String -Force
    }
    
    ssh $UserName@$ComputerName
}