

function start-dev2020 {
    az vm start -g "DEVOPS-ENGINEERS-DEV2020-543870" -n "dev2020" 
}

function stop-dev2020 {
    az vm stop -g "DEVOPS-ENGINEERS-DEV2020-543870" -n "dev2020" 
}

function restart-dev2020 {
    az vm restart -g "DEVOPS-ENGINEERS-DEV2020-543870" -n "dev2020" 
}

function connect-dev2020-rdp {
    $server = "dev2020.westeurope.cloudapp.azure.com"
    $port   = "3389" 

    Start-Process "mstsc" -ArgumentList "/V:$server`:$port /fullscreen /admin " 
}

function connect-dev2020-ssh {
    ssh sysadmin@dev2020.westeurope.cloudapp.azure.com
}

function connect-ubuntu2020 {
    ssh sysadmin@ubuntu2020.westeurope.cloudapp.azure.com
}

