
function env-list { ls env:\ }

function env-set {
    param($Name, $Value)
    # $env:$Name = $value
    # Process, User, Machine.
    [Environment]::SetEnvironmentVariable($Name, $Value, 'User')
}


function env-get {
    param($Name)
    # $env:$Name 
    [Environment]::GetEnvironmentVariable($Name, 'User')
}