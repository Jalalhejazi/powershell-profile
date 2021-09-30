############################################################
# PowerShell 7 Profile configuration
############################################################

try {
    $isCloudShell = uname 
}
catch {}


if ($isCloudShell -eq "Linux" -or $isCloudShell -eq "Darwin") {
    $ProfileHOME  = "$home\.config\powershell"
} else {
    $ProfileHOME  = "${Env:USERPROFILE}\OneDrive - superusers.dk\Documents\powershell"
}


. "$ProfileHOME\index.ps1"

