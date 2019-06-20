## Add Modules to env:PSModulePath
$env:PSModulePath += -join(";", "$ProfileHome", "\Modules")

                    
function profile-ModulePath {
    (cat Env:\PSModulePath) -split ";"
}


function profile-edit   { subl $profilehome }
function profile-reload { . $profile }

function profile-update { 
    cd $ProfileHOME
    git stash  
    git pull
}


function profile-push {
    cd $ProfileHOME
    npm run deploy 
}


function profile-setup {
    cd ${Env:USERPROFILE}\Documents
    rimraf ./windowspowershell
    git clone https://superusers-kursus@dev.azure.com/superusers-kursus/windowspowershell/_git/windowspowershell
    exit
}



New-PSDrive -Name profile -PSProvider FileSystem -Root $profileHome | Out-Null
New-PSDrive -Name kursus -PSProvider FileSystem -Root "$profileHome/kursus"  | Out-Null
New-PSDrive -Name opgaver -PSProvider FileSystem -Root "$profileHome/kursus/opgaver" | Out-Null

profile-update | Out-Null
