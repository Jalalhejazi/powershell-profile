function profile-edit   { subl $profilehome }
function profile-reload { . $profile }

function profile-update { 
    cd $ProfileHOME
    git stash  
    git pull
}
