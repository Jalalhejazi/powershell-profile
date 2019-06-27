## Using scoop.sh (the missing apt-get install for windows)
function scoop-install-development {
    scoop bucket add extras   
    scoop install git 
    scoop install 7zip 
    scoop install sudo 
    scoop install touch
    scoop install vim 
    scoop install gow 
    scoop install vscode 
    scoop install win32-openssh 
    scoop install azure-cli 
    scoop install pwsh

    # scoop install concfg 
}

function scoop-update-all {
<#
 How to update everything? 
 scoop  help update
#>
    scoop update 
    scoop update * --force --quiet
}


function scoop-help {
   scoop  --help 
}


function scoop-list {
    scoop list
}


function scoop-homepage {
    param($appName)
    scoop home $appName
}


function scoop-app-info {
    param($appName)
    scoop info $appName
}


function scoop-app-uninstall {
    param($appName)
    scoop uninstall $appName
}


function please-make-my-life-easy {
    ## ref.: https://github.com/sindresorhus/awesome-nodejs
     
    npm --global install fkill-cli kill-tabs rimraf empty-trash-cli pen speed-test live-server http-server is-online-cli is-up-cli clipboard-cli 
}


function web-development {
    npm install --global @angular/cli typescript 
}