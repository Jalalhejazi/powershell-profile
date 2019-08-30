# Opinionated semantic-git-deploy 

param( 
    [Parameter(Mandatory=$false)] 
    [String] [ValidateSet("broken","feature","fix")] 
    $version  = "fix"  

    ,    
    [Parameter(Mandatory=$false)] 
    [String] 
    $anyMessage = ""  
)

git add .
git commit -m "$version $anyMessage"

switch ($version) {
    "broken"  { npm version major }
    "feature" { npm version minor }
    Default   { npm version patch }
}

git push origin master --force --follow-tags --quiet

