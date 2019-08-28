
function env-list { ls env:\$args }

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

function env-Get-DevOps-PAT {
    env-get AZURE_DEVOPS_EXT_PAT
}
