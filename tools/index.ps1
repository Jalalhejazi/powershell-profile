function please-make-my-life-easy {    
    Set-ExecutionPolicy Bypass -Scope Process -Force;
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/SuperUsersDK/automation/master/Setup/setup-az-204.ps1'))

}
function scoop-install-web {
    scoop install python
    pip install httpie
    
    npm install npm --global
    npm install @angular/cli @nestjs/cli typescript --global
    npm install fkill-cli kill-tabs rimraf empty-trash-cli pen speed-test live-server http-server is-online-cli is-up-cli clipboard-cli --global
}


function scoop-update-all {
<#
 How to update everything? 
 scoop  help update
#>
    scoop update 
    scoop update * --force --quiet
}

function scoop-list {
    scoop list
}


function scoop-homepage {
    param($appName)
    scoop home $appName
}


function scoop-info {
    param($appName)
    scoop info $appName
}