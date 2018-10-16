## Must login first using "Login-AzureRmAccount"

function new-azure-sqlserver{

    Import-Module AzureRM.*
    

    param(
        $aliaspace              = 'superusers' ,       
        $namespace              = '20181016'   
    )

    $resourcegroup          = "$aliaspace-$namespace"
    $location               = 'westeurope'
    $servername             = "$aliaspace-sqlserver-$namespace"
    $dbname                 = "$aliaspace-sqlserver-database-$namespace"
    $localIP                = (Invoke-WebRequest -Uri https://api.ipify.org).Content.trim()
    $cred                   = Get-Credential -Message "Enter SQLServer credentials username and password"


    # Stop execution next statement on error 
    $ErrorActionPreference = "stop"

    #Create Resource Group to hold SQL components
    New-AzureRmResourceGroup -Name $resourcegroup -Location $location -Force 

    #Create SQL Server
    New-AzureRmSqlServer -ResourceGroupName $resourcegroup -Location $location -ServerName $servername -SqlAdministratorCredentials $cred -ServerVersion '12.0'

    #Create Server Firewall rules
    New-AzureRmSqlServerFirewallRule -ResourceGroupName $resourcegroup -ServerName $servername -AllowAllAzureIPs  
    New-AzureRmSqlServerFirewallRule -ResourceGroupName $resourcegroup -ServerName $servername -FirewallRuleName 'IntroUserFirewall' -StartIpAddress $localIP -EndIpAddress $localIP

    #Create Database
    New-AzureRmSqlDatabase -ResourceGroupName $resourcegroup -ServerName $servername -Edition Standard -DatabaseName $dbname -RequestedServiceObjectiveName 'S0'

    #Connect SSMS to the new session
    $cmd = "SSMS -S '$servername.database.windows.net' -d 'master' -U '$($cred.UserName)' -p '$($cred.GetNetworkCredential().Password)' -nosplash"
    Invoke-Expression $cmd
}


