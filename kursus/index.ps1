
<# 

    To use node as commandline, you can use https://www.npmjs.com/package/commander

    npm repo commander
#>


function ng-generate-component {
    param(
        $navn 
    )
   ng generate component $navn  --module=app.module.ts --export --no-spec --selector=$navn $args
} 

