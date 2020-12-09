
function connect-dev2020 {
    $server = "dev2020.westeurope.cloudapp.azure.com"
    $port   = "3389" 

    Start-Process "mstsc" -ArgumentList "/V:$server`:$port /fullscreen /admin " 
}

function connect-ubuntu2020 {
    ssh sysadmin@ubuntu2020.westeurope.cloudapp.azure.com
}

