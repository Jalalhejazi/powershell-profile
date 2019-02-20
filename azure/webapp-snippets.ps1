
function deploy-webapp-snippets {

param(
    $resourceGroup      = "kursus-2019",
    $location           = "westeurope",
    $appName            = "demo-webapp-2019",
    $sqlServerName      = "sqlserver2019",
    $databaseName       = "SnippetsDatabase",
    $sqlServerUsername  
    $sqlServerPassword   
)

# create a resource group
az group create -n $resourceGroup -l $location

# see the options for creating an app service plan
az appservice plan create -h

# create the app service plan
$planName="hardware-$location-$appname"
az appservice plan create -n $planName -g $resourceGroup --sku B1

# create the webapp
az webapp create -n $appName -g $resourceGroup --plan $planName


# discover the URI
# az webapp show -n $appName -g $resourceGroup --query "defaultHostName"
# $site = $( az webapp show -n $appName -g $resourceGroup --query "defaultHostName" -o tsv)
# start-process ("https://$site")


# Configure git deployment
$gitrepo="https://git.itacademy.dk/cloud/webapp-snippets.git"


# configure the app to deploy from $gitrepo
az webapp deployment source config -n $appName -g $resourceGroup --repo-url $gitrepo --branch master --manual-integration

# (optional) sync with repo latest code change
#az webapp deployment source sync -n $appName -g $resourceGroup


# create the SQL server
az sql server create -n $sqlServerName -g $resourceGroup -l $location -u $sqlServerUsername -p $sqlServerPassword


# create the database
az sql db create -g $resourceGroup -s $sqlServerName -n $databaseName --service-objective Basic


####################### Connect SQL server to web app ###########################

# allow IP address to access SQL server Firewall
az sql server firewall-rule create -g $resourceGroup -s $sqlServerName -n AllowWebApp1 --start-ip-address 0.0.0.0 --end-ip-address 0.0.0.0


# construct the connection string
$connectionString="Server=tcp:$sqlServerName.database.windows.net;Initial Catalog=$databaseName;User ID=$sqlServerUsername@$sqlServerName;Password=$sqlServerPassword;Trusted_Connection=False;Encrypt=True;"


# provide add the connection string to the web app
az webapp config connection-string set -n $appName -g $resourceGroup -t SQLAzure --settings "SnippetsContext=$connectionString"

# To migrate/setup the database model to SQLServer
# start-process ("https://$site/migrate")
# curl "https://$site/migrate"

}