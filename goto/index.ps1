
function goto-home {
  cd $ProfileHOME
}

function goto-dev {
  cd C:\dev\
}

$HOMEPAGE = 'https://demant.sharepoint.com/Pages/Home.aspx'

function goto-demant {
  chrome "$HOMEPAGE/"
}

function goto-sharepoint {
  chrome "https://demant.sharepoint.com/"
}


function goto-ServiceDesk {
  chrome "https://servicedesk.demant.com/"
}

function goto-confluence-Roadmap {
  chrome "https://confluence.kitenet.com/display/SWSCODE/Roadmap+Subjects"
}


function goto-confluence-SAFE-ART-Device {
  chrome "https://confluence.kitenet.com/display/HIGSWSDEVICEART/FSW+Device+ART+Setup"
}


Add-Type -TypeDefinition @"
public enum DemantTags
    {
        doc_,
        git_,
        build_,
        project_
    }
"@

function goto-demant-tfs-fittingSoftware {
  <#
    Future Usage [DemantTags]::$tags 
  #>
  
  param(
    [String] [ValidateSet("documentation","git","build")] $tag
  )
  
  switch ($tag) {
    "documentation" { chrome "https://confluence.kitenet.com/pages/viewpage.action?pageId=1182853922" }
    "git"           { chrome "http://tfs-fs.demant.com:8080/tfs/FittingSoftware/" }
    "build"         { chrome "https://confluence.kitenet.com/display/SWSCODE/Issues" }

    Default { chrome "https://jira.kitenet.com/secure/RapidBoard.jspa?projectKey=PHOEN&rapidView=1174" }
  }
  
}


function goto-demant-CoDe {
# https://confluence.kitenet.com/display/SWSCODE/Dashboards
  chrome "https://confluence.kitenet.com/display/SWSCODE/SWS-CoDe"
}



function goto-demant-learningCentral {
  chrome "https://oticonas.plateau.com/learning/user/personal/landOnPortalHome.do?OWASP_CSRFTOKEN=2QCU-EFPY-A8DR-XUYD-A1WK-J88W-QEQW-IHX2&fromSF=Y&fromDeepLink=true&pageID="
}




function goto-azure-portal {
  chrome 'https://portal.azure.com/'
}
function goto-azure-shell {
  chrome 'https://shell.azure.com/'
}

function goto-powershell-profile {
  chrome 'https://github.com/Jalalhejazi/powershell-profile.git'
}

function goto-google {
  param($search)
  chrome --incognito "https://www.google.com/search?newwindow=1&q=$search"
}


function goto-buildDefinitions {
  cd C:\dev\FittingSoftware\Arizona\Phoenix\Build\BuildDefinitions
  pwd
}
