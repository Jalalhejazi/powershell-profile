function env-list { ls env:\ }

function cls { clear-host }
function c   { clear-host }


function goto-theming-powershell {
    chrome 'https://github.com/lukesampson/scoop/wiki/Theming-Powershell'
}

function host-list-layout {
    # scoop install concfg
    # https://github.com/lukesampson/concfg
    concfg  presets
}

function host-set-layout-mocha {
    # scoop install concfg
    # concfg  presets
    concfg  import mocha --yes --non-interactive
}

function host-set-layout-monokai {
    # scoop install concfg
    # concfg  presets
    concfg  import monokai --yes --non-interactive
}



function host-set-layout-google-light {
    # scoop install concfg
    # concfg  presets
    concfg  import google-light --yes --non-interactive
}

function host-set-layout {
    # scoop install concfg
    # concfg  presets
    param($layoutName)
    concfg  import $layoutName --yes --non-interactive
}


function ps6 {
    ## https://github.com/PowerShell/PowerShell/releases
    
    & "${ENV:ProgramFiles}\PowerShell\6-preview\pwsh.exe" -WorkingDirectory ~
}

## Fjerne den gule farvet prompt  
# $host.PrivateData.ErrorBackgroundColor = 15
# remove-module psreadline