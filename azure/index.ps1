
$author = 'jalal'

if ($env:USERNAME -eq $author) {
      
    $subscription=env-get azure-subscription
    $keyvault=env-get azure-keyvault
    
    az account set -s $subscription
    
    Clear-Host
    Write-Host "Loading Azure $subscription subscription and $keyvault secrets for user $author "
}

. "$ProfileHOME\azure\secrets.ps1"
. "$ProfileHOME\azure\vm-connect.ps1"
. "$ProfileHOME\azure\redis.ps1"
. "$ProfileHOME\azure\devops.ps1"


