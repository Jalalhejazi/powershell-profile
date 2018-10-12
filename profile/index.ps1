function profile-edit   { subl $profilehome }
function profile-reload { . $profile }

function profile-update { 
    git stash  
    git pull
}
