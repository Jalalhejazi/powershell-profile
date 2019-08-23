
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
  chrome incognito "$HOMEPAGE/"
}

function goto-evaluering {
  chrome --incognito "http://eval.superusers.dk/"
}

function goto-superusers-kursus {
  param($kursusNummer)
  chrome --incognito "$HOMEPAGE/kursus/$kursusNummer"
}

function goto-azure-portal {
  chrome --incognito 'https://portal.azure.com/'
}


function goto-azure-shell {
  chrome --incognito 'https://shell.azure.com/'
}

function goto-azure-dev {
  chrome --incognito 'https://dev.azure.com/'
}

function goto-azure-dev-windowsPowershell {
  chrome --incognito 'https://dev.azure.com/superusers-kursus/windowspowershell'
}

function goto-google {
  param($search)
  chrome --incognito "https://www.google.com/search?newwindow=1&q=$search"
}


function goto-github-superusers {
  chrome 'https://github.com/SuperUsersDK/'
}



goto-home

