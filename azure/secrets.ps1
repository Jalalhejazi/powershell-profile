function get-password{
    param(
        $secretName,
        $vaultName   
    )
    $myPassword=(az keyvault secret show --vault-name $vaultName --name $secretName --query "value" --output tsv)
    return $myPassword
}


function set-password{
    param(
        $secretName,
        $secretValue,
        $vaultName 
    )
    az keyvault secret set --vault-name $vaultName   --name $secretName --value $secretValue
}

