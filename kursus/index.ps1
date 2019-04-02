function ng-generate-component {
    param(
        $navn 
    )
   ng generate component $navn  --module=app.module.ts --export --no-spec --selector=$navn $args
} 
