
## You can change sa_password here 
## Or use any secret-store like 'azure key-vault'

$sa_password = 'Djakp88t'

function get-microservice-sqlserver{
    $img = "jalalhejazi/microservice_sqlserver"

    docker pull $img
    docker run -d -p "1433:1433"  $img
    docker container ls

    $cmd01 = "SQLCMD -S $env:COMPUTERNAME -U sa -P $sa_password -d master -Q 'select @@version' "
    $cmd02 = "SQLCMD -S $env:COMPUTERNAME -U sa -P $sa_password -d AdventureworksLT2017 -Q 'exec API.Get_Product_Info' "
    $cmd03 = "SSMS   -S '$env:COMPUTERNAME,1433' -d 'master' -U 'SA' -p $sa_password -nosplash "

    $cmd01
    $cmd02
    $cmd03
}


function get-container-webapp{
    $img = "jalalhejazi/container-webapp"

    docker pull $img
    docker run -d -p "1234:8080" $img
    docker container ls
}
