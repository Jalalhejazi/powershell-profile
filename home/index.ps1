
function goto-kursus {
  cd "$ProfileHOME\kursus"
}

function goto-home {
  cd $ProfileHOME
}


function goto-dev {
  cd "C:\Dev"
}

$HOMEPAGE = 'https://www.superusers.dk'

function goto-superusers {
  chrome "$HOMEPAGE/"
}

function goto-evaluering {
  chrome "http://eval.superusers.dk/"
}

function goto-superusers-kursus {
  param($kursusNummer)
  chrome "$HOMEPAGE/kursus/$kursusNummer"
}

function goto-azure-portal {
  chrome 'https://portal.azure.com/'
}


function goto-azure-shell {
  chrome 'https://shell.azure.com/'
}

function goto-azure-dev {
  chrome 'https://dev.azure.com/'
}

function goto-azure-dev-windowsPowershell {
  chrome 'https://dev.azure.com/superusers-kursus/windowspowershell'
}


goto-home

