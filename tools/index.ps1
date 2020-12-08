## Using scoop.sh (the missing apt-get install for windows)
function scoop-install-web {
    scoop install azure-cli 
    scoop install python
    scoop install dotnet-sdk
    scoop install nodejs
    scoop install vscode
    scoop install devdocs
    scoop install googlechrome
    scoop install git 
    scoop install gitignore 

    pip install httpie
    
    npm install npm --global
    npm install @angular/cli @nestjs/cli typescript --global
}
function scoop-install-utils {
    scoop bucket add extras   
    scoop install 7zip 
    scoop install sudo 
    scoop install touch
    scoop install win32-openssh 
    scoop install pwsh
    scoop install concfg 
    scoop install gow 
    scoop install vim 
    scoop install starship
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


function please-make-my-life-easy {
    ## ref.: https://github.com/sindresorhus/awesome-nodejs
     
    npm install fkill-cli kill-tabs rimraf empty-trash-cli pen speed-test live-server http-server is-online-cli is-up-cli clipboard-cli --global
}


## vscode extensions TODO

## npm i -g azure-functions-core-tools@3 --unsafe-perm true
## code --install-extension ms-vscode.csharp 
## code --install-extension ms-vscode.azurecli
## code --install-extension ms-azuretools.vscode-azurefunctions
## code --install-extension ms-vscode.azure-account
## code --install-extension ms-azuretools.vscode-azurestorage
## code --install-extension ms-vscode.powershell 


