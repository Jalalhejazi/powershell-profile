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


function profile-deploy {
    cd $ProfileHOME
    git-deploy 
}


function profile-setup {
    cd ${Env:USERPROFILE}\Documents
    rimraf ./windowspowershell
    git clone https://superusers-kursus@dev.azure.com/superusers-kursus/windowspowershell/_git/windowspowershell
    exit
}





