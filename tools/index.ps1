## Using scoop.sh (the missing apt-get install for windows)
function scoop-install-all {
    scoop bucket add extras   
    scoop install 7zip 
    scoop install git 
    scoop install sudo 
    scoop install touch
    scoop install vscode 
    scoop install win32-openssh 
    scoop install azure-cli 
    scoop install pwsh
    scoop install chrome
    scoop install concfg 

    # scoop install gow 
    # scoop install vim 
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


function scoop-info {
    param($appName)
    scoop info $appName
}


function scoop-uninstall {
    param($appName)
    scoop uninstall $appName
}


function please-make-my-life-easy {
    ## ref.: https://github.com/sindresorhus/awesome-nodejs
     
    npm --global install fkill-cli kill-tabs rimraf empty-trash-cli pen speed-test live-server http-server is-online-cli is-up-cli clipboard-cli 
}


function web-development {
    npm install -g npm
    npm install --global @angular/cli typescript 
}