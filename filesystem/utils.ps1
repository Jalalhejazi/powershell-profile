function whoami     { (get-content env:\userdomain) + "\" + (get-content env:\username); }

function touch          { New-Item "$args" -ItemType File}

function f             { explorer.exe .} 
function finder        { explorer.exe $args} 

function zip {
    7z a sourcecode.zip .
}
