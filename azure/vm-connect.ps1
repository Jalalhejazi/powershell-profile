
function connect-dev-pc {
$server = "dev2020.westeurope.cloudapp.azure.com"
$port   = "3389" 

Start-Process "mstsc" -ArgumentList "/V:$server`:$port /fullscreen /admin " 
}

