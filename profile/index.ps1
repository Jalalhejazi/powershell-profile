## Add Modules to env:PSModulePath

$env:PSModulePath += ";$ProfileHome/Modules/"

function profile-ModulePath {
    (cat Env:\PSModulePath) -split ";"
}



function profile-edit   { subl $profilehome }
function profile-reload { . $profile }

function profile-update { 
    cd $ProfileHOME
    git stash  
    git pull
}
