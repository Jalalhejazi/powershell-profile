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

$TryTheseCommands = @"

    sudo powershell = start powershell as admin 

    install-web-tools = install web development tools

    scoop list = show a list of installed scoop apps

"@

ConvertFrom-StringData $TryTheseCommands
}