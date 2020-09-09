############################################################
# PowerShell 7 Profile configuration
############################################################

$isCloudShell = uname 

if ($isCloudShell -eq "Linux") {
    $ProfileHOME  = "$home\.config\PowerShell"
} else {
    $ProfileHOME  = "${Env:USERPROFILE}\Documents\PowerShell"
}


. "$ProfileHOME\index.ps1"

