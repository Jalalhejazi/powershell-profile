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
   $repo = "https://superusers-kursus@dev.azure.com/superusers-kursus/powershell/_git/powershell"

   try {
       $isCloudShell = uname 
   }catch {}

   if ($isCloudShell -eq "Linux" -or $isCloudShell -eq "Darwin") {
      cd $home
      Remove-Item -Path .config\ -Recurse -Force
      mkdir .config
      cd .config
      git clone $repo
   } else {
      cd "${Env:USERPROFILE}\Documents"
      Remove-Item -Path .\PowerShell\ -Recurse -Force -ErrorAction SilentlyContinue
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


