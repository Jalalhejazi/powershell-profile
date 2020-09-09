## Add Modules to env:PSModulePath
$env:PSModulePath += -join(";", "$ProfileHome", "\Modules")

                    
function profile-ModulePath {
    (cat Env:\PSModulePath) -split ";"
}

function profile-edit   { code $profilehome }
function profile-reload { . $profile }

function profile-update { 
    cd $ProfileHOME
    git stash  
    git pull
}



function profile-setup {
   $ErrorActionPreference = 'SilentlyContinue'
   $repo = "https://superusers-kursus@dev.azure.com/superusers-kursus/PowerShell/_git/PowerShell"

   $isCloudShell = uname 
   if ($isCloudShell) {
      cd $home
      mkdir .config
      cd .config
      Remove-Item -Path .\PowerShell\ -Recurse -Force
      git clone $repo
   } else {
      cd "${Env:USERPROFILE}\Documents"
      Remove-Item -Path .\PowerShell\ -Recurse -Force
      git clone $repo
   }
   echo "reload your PowerShell to read $profile"
}


function profile-info {
$TryTheseCommands = @"
    sudo powershell     = (start powershell as admin)
    scoop-install-utils = (install utils tools)
    scoop-install-web   = (install web development tools)
    profile-edit        = (open profile with vscode for edit)
    profile-update      = (get latest version from repo)
    scoop list          = (show a list of installed scoop apps)
"@

    ConvertFrom-StringData $TryTheseCommands 
}


