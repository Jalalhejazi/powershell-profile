function connect-redis-cli {

    ## https://markheath.net/post/exploring-redis-with-docker
    ## docker redis-cli
    <#
        docker run -d -p 6379:6379 --name redis1 redis
        docker exec -it redis1 sh
        redis-cli
    #>

    $server     = get-azure-secret -secretName redis-server
    $port       = get-azure-secret -secretName redis-port
    $accessKey  = get-azure-secret -secretName redis-accesskey

    redis-cli -h $server -p $port -a $accessKey
}

<#
    set counter 100
    expire counter 5
    get counter
#>

<#
    set productKey myproduct
    exists productKey
    del productKey
    exists productKey
#>