function goto-azure-dev-angular {
    chrome --incognito 'https://dev.azure.com/superusers-kursus/angular/'
}

function goto-angular-homepage {
    chrome --incognito 'https://angular.io/'
}


function goto-angular-example {
    chrome --incognito 'https://www.angularexampleapp.com/'
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


function ng-new-app-using-dotnet {
    # scoop install dotnet
    param(
        $navn='dotnet-demo-app' 
    )
    mkdir $name
    dotnet new angular 
    dotnet restore 
    dotnet build
    dotnet run        
}

function ng-generate-component {
    param(
        $navn 
    )
   ng generate component $navn  --module=app.module.ts --export --skip-tests --selector=$navn $args
} 

function ng-generate-class {
    param(
        $navn
    )
    ng generate class  --name  $navn $args
}


function ng-generate-service{
    param(
        $navn
    )
    ng generate service  --name  $navn $args
}


function ng-add-eksternal-grid {
 ng add @progress/kendo-angular-grid
}
