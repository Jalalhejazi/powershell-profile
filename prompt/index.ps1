function prompt
{
    
    $time = "{0,2:hh}:{0,2:mm}" -f (Get-Date)
   
    $currentPrincipal = New-Object Security.Principal.WindowsPrincipal( [Security.Principal.WindowsIdentity]::GetCurrent() )
    $isAdmin = $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

    if ($isAdmin) {
        Write-Host ("ADMIN ") -nonewline -foregroundcolor DarkYellow -backgroundcolor DarkBlue
        $leftCharCount += 1
    }

    # $temperatur = get-temperatur-dk 
    # $IP = get-private-IP-address
    # $host.UI.RawUI.WindowTitle = "$pwd    -    $temperatur    -    time ($time)";
   
    $host.UI.RawUI.WindowTitle  = "$time"
    return "$IP $ "
}

