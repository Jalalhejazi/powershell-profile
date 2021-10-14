## Add Modules to env:PSModulePath
$env:PSModulePath += -join(";", "$ProfileHome", "\Modules")

                    
function profile-ModulePath {
    (cat Env:\PSModulePath) -split ";"
}

function profile-edit   { 
    cd $profilehome 
    code .
}


function profile-setup {
   $repo = "https://github.com/Jalalhejazi/powershell-profile.git"
   try {
       $myComputer = uname 
   }catch {}

   if ($myComputer -eq "Linux" -or $myComputer -eq "Darwin") {
      cd $home
      Remove-Item -Path .config\ -Recurse -Force
      mkdir .config
      cd .config
      git clone $repo powershell
   } else {
      cd "${Env:USERPROFILE}\Documents"
      Remove-Item -Path .\PowerShell\ -Recurse -Force -ErrorAction SilentlyContinue
      git clone $repo powershell
   }
   echo "reload your PowerShell to read $profile"
}


function profile-info {
$TryTheseCommands = @"
    sudo powershell     = (start powershell as admin)
    scoop-install-utils = (install utils tools)
    scoop-install-web   = (install web development tools)
    scoop-update-all    = (Update every scoop package in this machine)
    profile-edit        = (open profile with vscode for edit)
    profile-setup       = (clone this repo again)
    scoop list          = (show a list of installed scoop apps)
"@

    ConvertFrom-StringData $TryTheseCommands 
}


