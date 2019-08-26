
$author = 'jalal'

if ($env:USERNAME -eq $author) {
      
    $subscription="MSDN_950_kr"
    $keyvault="superusers2020"
    az account set -s $subscription
    
    Clear-Host
    Write-Host "Loading Azure $subscription subscription and $keyvault secrets for user $author "

    # https://www.azuredevopslabs.com/labs/vstsextend/azurekeyvault/
}

. "$ProfileHOME\azure\secrets.ps1"
. "$ProfileHOME\azure\vm-connect.ps1"
. "$ProfileHOME\azure\redis.ps1"
. "$ProfileHOME\azure\devops.ps1"


