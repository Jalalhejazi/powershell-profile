function whoami     { (get-content env:\userdomain) + "\" + (get-content env:\username); }

function touch          { New-Item "$args" -ItemType File}

function profile-edit   { ise $profile }
function profile-reload { . $profile }

function f             { explorer.exe .} 
function finder        { explorer.exe $args} 

