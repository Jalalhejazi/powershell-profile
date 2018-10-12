
function connect-win2016-dev-pc {
<#
    change "windows-nano-server-on-azure" to your Azure VM Name
#>

$server = "windows-nano-server-on-azure.northeurope.cloudapp.azure.com"
$port   = "3389" 

Start-Process "mstsc" -ArgumentList "/V:$server`:$port /fullscreen /admin " 
}

