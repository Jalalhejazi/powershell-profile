function rg-delete {
    param (
      $resourceGroupName
    )
    az group delete --name $resourceGroupName --no-wait --yes 
}

function rg-show {
    param (
      $resourceGroupName
    )
    az group show --name $resourceGroupName 
}


function rg-create {
    param (
      $resourceGroupName
    )
    az group create --name $resourceGroupName --location westeurope
}


function rg-list {
    az group list 
}