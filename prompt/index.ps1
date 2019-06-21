function prompt
{
    $temperatur = get-temperatur-dk 
    $IP = get-private-IP-address
    $time = "{0,2:hh}:{0,2:mm}" -f (Get-Date)
    $currentPrincipal = New-Object Security.Principal.WindowsPrincipal( [Security.Principal.WindowsIdentity]::GetCurrent() )
    $isAdmin = $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

    if ($isAdmin) {
        Write-Host ("ADMIN ") -nonewline -foregroundcolor DarkYellow -backgroundcolor DarkBlue
        $leftCharCount += 1
    }


    $host.UI.RawUI.WindowTitle = "$pwd    -    $temperatur    -    time ($time)";
   
    return "$IP $ "
}

