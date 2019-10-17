function prompt
{
    $time = "{0,2:hh}:{0,2:mm}" -f (Get-Date)
   
    $currentPrincipal = New-Object Security.Principal.WindowsPrincipal( [Security.Principal.WindowsIdentity]::GetCurrent() )
    $isAdmin = $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

    if ($isAdmin) {
        Write-Host ("ADMIN ") -nonewline -foregroundcolor DarkYellow -backgroundcolor DarkBlue
        $leftCharCount += 1
    }

    $host.UI.RawUI.WindowTitle = "$pwd  -  time ($time)";
   
    return "$ "
}

function info {

    Write-Host "start PowerShell in ADMIN mode:     sudo powershell  " -ForegroundColor Green
    Write-Host "install web tools:      install-web-tools  " -ForegroundColor Green
    Write-Host "list installed cli tools:       scoop list  " -ForegroundColor Green
    Write-Host "get profile url:        profile-repo  " -ForegroundColor Green
    Write-Host "to edit this profile:       profile-edit  " -ForegroundColor Green

}