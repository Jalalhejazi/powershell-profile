## Using scoop.sh (the missing apt-get install for windows)
function scoop-install-all {
    scoop bucket add extras   
    scoop install 7zip 
    scoop install git 
    scoop install gitignore 
    scoop install sudo 
    scoop install touch
    scoop install vscode 
    scoop install node
    scoop install yarn
    scoop install python
    scoop install dotnet-sdk
    scoop install win32-openssh 
    scoop install azure-cli 
    scoop install pwsh
    scoop install googlechrome
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

function install-semantic-version-tool {
    dotnet tool install -g nbgv
}

function install-web-tools {
    pip install httpie
    scoop install dotnet-sdk
    scoop install nodejs
    scoop install devdocs
    npm install npm --global
    npm install @angular/cli @nestjs/cli typescript --global
}


function please-make-my-life-easy {
    ## ref.: https://github.com/sindresorhus/awesome-nodejs
     
    npm install fkill-cli kill-tabs rimraf empty-trash-cli pen speed-test live-server http-server is-online-cli is-up-cli clipboard-cli --global
}




