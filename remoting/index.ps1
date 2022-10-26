

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
    




function connect-to-ubuntu2020 {
    ssh sysadmin@ubuntu2020.westeurope.cloudapp.azure.com
}


function connect-to-Windows2020 {
<#

.EXAMPLE
connect-to-Windows2020 -ComputerName dev2020.westeurope.cloudapp.azure.com -UserName sysadmin -setup

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

$myDemantLinux = "kbnux-jazj.linux.emea.demant.com"


function connect-to-demant-linux {
    
    <#
        #1 SMP Debian 5.10.92-1 (2022-01-18) x86_64 GNU/Linux
        
        https://confluence.kitenet.com/display/LIIT/Docker+servers+kbnuxgrd01%2C+kbnuxgrd02%2C+...+and+many+others

    #>
    
    
    # -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o LogLevel=ERROR -o ServerAliveInterval=60 -o ServerAliveCountMax=3  -o ConnectionAttempts=3 -o ConnectTimeout=10 -o ControlMaster=no -o ControlPath=none -o ControlPersist=no -o ControlTty=no -o ForwardAgent=no -o ForwardX11=no -o ForwardX11Trusted=no -o GatewayPorts=no -o GlobalKnownHostsFile=/dev/null -o IdentityFile=/home/jazj/.ssh/id_rsa -o LocalForward=      
    ssh jazj@$myDemantLinux -p 222 
}
