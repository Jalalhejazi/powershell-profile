############################################################
# PowerShell 7 Profile configuration
############################################################

$isCloudShell = uname 

if ($isCloudShell) {
    $ProfileHOME  = "$home\.config\PowerShell"
} else {
    $ProfileHOME  = "${Env:USERPROFILE}\Documents\PowerShell"
}


. "$ProfileHOME\index.ps1"

