function get-content-from-json {
<#
.DESCRIPTION
    Get data from json file from disk

.EXAMPLE
    get-content-from-json "$ProfileHOME/package.json"  
    
.EXAMPLE
    (get-content-from-json "$ProfileHOME/package.json").repository.url

#>
    param([string] $path )
        
    $dataObject =  Get-Content -Path $path | ConvertFrom-Json

    write-output $dataObject 
}


function get-repo-url {
    (get-content-from-json  "$ProfileHOME/package.json").repository.url
}