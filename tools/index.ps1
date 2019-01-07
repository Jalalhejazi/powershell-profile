## Using scoop.sh (the missing apt-get install for windows)
function tools-install-development {
    scoop install git 
    scoop install 7zip 
    scoop install sudo 
    scoop install touch
    scoop install vim 
    scoop install gow 
    scoop install rsync 
    scoop install sublime-text 
    scoop install vscode 
    scoop install win32-openssh 
    scoop install azure-cli 
 
    # scoop install concfg 
}

function tools-update-all {
<#
 How to update everything? 
 scoop  help update
#>
    scoop update 
    scoop update * --force --quiet
}


function tools-help {
   scoop  --help 
}


function tools-list {
    scoop list
}

function please-make-my-life-easy {
    ## ref.: https://github.com/sindresorhus/awesome-nodejs
     
    npm --global install fkill-cli kill-tabs rimraf empty-trash-cli pen speed-test live-server http-server is-online-cli is-up-cli clipboard-cli 
}

function web-development {

    npm install --global @angular/cli typescript 
}