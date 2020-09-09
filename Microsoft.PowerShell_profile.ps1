############################################################
# PowerShell 7 Profile configuration
############################################################
$ErrorActionPreference = 'SilentlyContinue'

$isCloudShell = uname 

if ($isCloudShell) {
    $ProfileHOME  = "$home\.config\PowerShell"
} else {
    $ProfileHOME  = "${Env:USERPROFILE}\Documents\PowerShell"
}


. "$ProfileHOME\index.ps1"

