
function kursus-hent {
    $repo = "https://superusers-kursus@dev.azure.com/superusers-kursus/learning-powershell/_git/practical-powershell"
    $stien = "C:\dev"
    $path  = "$stien\practical-powershell" 
    Set-Location $stien
    if (-not(Test-Path $path) ) {
        git clone $repo
    }
    return $path
}

function kursus-opdater {
    $path = kursus-hent
    cd $path
    
    git config pull.ff only
    git pull
}


function kursus-mounting {
    
    $path = kursus-hent 

    $config = @{
        Name = "kursus"
        PSProvider = "FileSystem"
        Root = $path
        Description = "Maps to my working folder."
    }
    New-PSDrive @config -Scope Global -ErrorAction SilentlyContinue
    cd kursus:
}

