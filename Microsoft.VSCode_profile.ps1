############################################################
# PowerShell 7 Profile configuration
############################################################

try {
    $isCloudShell = uname 
}
catch {}

if ($isCloudShell -eq "Linux") {
    $ProfileHOME  = "$home\.config\PowerShell"
} else {
    $ProfileHOME  = "${Env:USERPROFILE}\Documents\PowerShell"
}


. "$ProfileHOME\index.ps1"

