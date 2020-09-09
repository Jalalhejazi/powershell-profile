
function env-list { dir env:\$args }

function env-set {
    param($Name, $Value)
   
    $ErrorActionPreference = 'SilentlyContinue'
    $isCloudShell = uname 
    if ($isCloudShell) {
        [Environment]::SetEnvironmentVariable($Name, $Value)
    } else {
        [Environment]::SetEnvironmentVariable($Name, $Value, 'User')
    }
}

function env-get {
    param($Name)
  
    $ErrorActionPreference = 'SilentlyContinue'
    $isCloudShell = uname 
    if ($isCloudShell) {
        [Environment]::GetEnvironmentVariable($Name)
    } else {
        [Environment]::GetEnvironmentVariable($Name, 'User')
    }
}
