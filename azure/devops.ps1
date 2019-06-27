
function devops-project-list {
    az devops project list
}

function devops-project-create {
    param(
        $projectName,
        $projectDescription,
        $visibility = 'private'
    )

    az devops project create --name $projectName --description $projectDescription --visibility $visibility  
}