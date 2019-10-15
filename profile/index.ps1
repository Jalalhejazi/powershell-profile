## Add Modules to env:PSModulePath
$env:PSModulePath += -join(";", "$ProfileHome", "\Modules")

                    
function profile-ModulePath {
    (cat Env:\PSModulePath) -split ";"
}

function profile-repo {
    (get-content-from-json  "$ProfileHOME/package.json").repository.url
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

function profile-deploy-all {
    cd $ProfileHOME
    env-get dev
    git-deploy 
}


function profile-setup {
    cd ${Env:USERPROFILE}\Documents
    rimraf ./windowspowershell
    $url = profile-repo
    git clone $url
    exit
}





