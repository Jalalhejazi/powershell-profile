
function ng-generate-component {
    param(
        $navn 
    )
   ng generate component $navn  --module=app.module.ts --export --no-spec --selector=$navn $args
} 

function ng-new-app {
<#

.EXAMPLE

ng-new-app demo -d

.EXAMPLE
ng-new-app demo -d


#>
    param($AppName)

    goto-dev
    ng new $AppName --minimal --routing  --defaults $args 
}