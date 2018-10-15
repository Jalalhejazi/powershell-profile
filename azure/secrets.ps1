function get-azure-secret{
    param(
        $secretName,
        $vaultName   
    )
    $myPassword=(az keyvault secret show --vault-name $vaultName --name $secretName --query "value" --output tsv)
    return $myPassword
}


function new-azure-secret{
    param(
        $secretName,
        $secretValue,
        $vaultName 
    )
    az keyvault secret set --vault-name $vaultName   --name $secretName --value $secretValue
}

