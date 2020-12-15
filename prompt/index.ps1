function prompt
{
    $time = "{0,2:hh}:{0,2:mm}" -f (Get-Date)
   
    $currentPrincipal = New-Object Security.Principal.WindowsPrincipal( [Security.Principal.WindowsIdentity]::GetCurrent() )
    $isAdmin = $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

    if ($isAdmin) {
        Write-Host ("ADMIN ") -nonewline -foregroundcolor DarkYellow -backgroundcolor DarkBlue
        $leftCharCount += 1
    }

    # $host.UI.RawUI.WindowTitle = "$pwd  -  time ($time)  - $subscription";
    $host.UI.RawUI.WindowTitle = "$pwd  -  time ($time)";
   
    return "$ "
}


function prompt-starship {
    # scoop install starship
    # ☄🌌️ The minimal, blazing-fast, and infinitely customizable prompt for any shell!
    Invoke-Expression (&starship init powershell)
}


function prompt-paradox {
    # Install-Module posh-git   -Scope AllUsers    -Force
    # Install-Module oh-my-posh -Scope AllUsers    -Force
    # http download https://www.cloudmanav.com/assets/static/CascadiaCode-Nerd-Font-Complete.ttf

    Set-Theme Paradox
}