
function validate-arm-template {
    param(
        $ResourceGroup = "demo-2018-poc" ,
        $TemplateFile  = "./azuredeploy.json"
    )
    az group deployment validate        `
    --resource-group    $ResourceGroup  `
    --template-file     $TemplateFile   
}

function deploy-arm-template {
<#
    .DESCRIPTION
    
    Ref.: https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-deploy-cli

#>

    param(
        $deploymentName ,
        $ResourceGroup = "demo-2018-poc" ,
        $location      = "west europe",
        $TemplateFile  = "./azuredeploy.json"
    )

    az group create --name $ResourceGroup --location $location

    az group deployment create           `
        --name $deploymentName           `
        --resource-group $ResourceGroup  `
        --template-file $TemplateFile        

}


function delete-resource-group{
    param(
        $ResourceGroup = "demo-2018-poc"
    )
    az group delete -g $ResourceGroup --no-wait --yes
}