function goto-azure-dev-angular {
    chrome --incognito 'https://dev.azure.com/superusers-kursus/angular/'
}

function goto-angular-homepage {
    chrome --incognito 'https://angular.io/'
}


  
function ng-new-help {
    ng new --help 
}

function ng-build-help {
    ng build --help 
}


function ng-add-help {
    ng add --help 
}


function ng-new-app {
<#

.EXAMPLE

ng-new-app demo -d

.EXAMPLE
ng-new-app demo 


#>
    param($AppName = 'demo')

    goto-dev
    ng new $AppName  --routing  --defaults --style less  --skip-tests   $args 
    
}



function ng-generate-component {
    param(
        $navn 
    )
   ng generate component $navn  --module=app.module.ts --export --no-spec --selector=$navn $args
} 
