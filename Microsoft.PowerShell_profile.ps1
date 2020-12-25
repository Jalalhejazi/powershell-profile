############################################################
# PowerShell 7 Profile configuration
############################################################

try {
    $isCloudShell = uname 
}
catch {}


if ($isCloudShell -eq "Linux" -and $isCloudShell -eq "Darwin") {
    $ProfileHOME  = "$home\.config\powershell"
} else {
    $ProfileHOME  = "${Env:USERPROFILE}\Documents\powershell"
}


. "$ProfileHOME\index.ps1"

