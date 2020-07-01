
function connect-win2016-dev-pc {
<#
    change "windows-nano-server-on-azure" to your Azure VM Name
#>

$server = "windows-nano-server-on-azure.northeurope.cloudapp.azure.com"
$port   = "3389" 

Start-Process "mstsc" -ArgumentList "/V:$server`:$port /fullscreen /admin " 
}




function create-vm-linux{
    param(
        $rgName="vm2020",
        $VMName="dev2020"
    )
    $secret = get-azure-secret sysadmin
    az group create --location westus --name $rgName
    az vm create --resource-group $rgName --name $VMName --image Debian --admin-username sysadmin --admin-password $secret --tags "env=training"
}


