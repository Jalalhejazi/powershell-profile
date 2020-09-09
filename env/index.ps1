
function env-list { dir env:\$args }

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



function cloud-env-set {
    param($Name, $Value)
    [Environment]::SetEnvironmentVariable($Name, $Value)
}
function cloud-env-get {
    param($Name)
    [Environment]::GetEnvironmentVariable($Name)
}