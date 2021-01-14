
function info-dev2020 {
    write-output "dev2020.westeurope.cloudapp.azure.com"
    get-command -Noun dev2020
}

function show-dev2020 {
    az vm show -g "DEVOPS-ENGINEERS-DEV2020-543870" -n "dev2020" -d
}


function start-dev2020 {
    az vm start -g "DEVOPS-ENGINEERS-DEV2020-543870" -n "dev2020" 
}

function stop-dev2020 {
    az vm stop -g "DEVOPS-ENGINEERS-DEV2020-543870" -n "dev2020" 
}

function restart-dev2020 {
    az vm restart -g "DEVOPS-ENGINEERS-DEV2020-543870" -n "dev2020" 
}

function connect-dev2020 {
    $server = "dev2020.westeurope.cloudapp.azure.com"
    $port   = "3389" 

    Start-Process "mstsc" -ArgumentList "/V:$server`:$port /fullscreen /admin " 
}

function ssh-dev2020 {
    ssh sysadmin@dev2020.westeurope.cloudapp.azure.com
}

function ssh-ubuntu2020 {
    ssh sysadmin@ubuntu2020.westeurope.cloudapp.azure.com
}

