

function cls { clear-host }
function c   { clear-host }


function host-list-layout {
    # scoop install concfg
    # https://github.com/lukesampson/concfg
    # https://github.com/lukesampson/scoop/wiki/Theming-Powershell
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


## Fjerne den gule farvet prompt  
# $host.PrivateData.ErrorBackgroundColor = 15
# remove-module psreadline