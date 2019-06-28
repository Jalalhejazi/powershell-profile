
function devops-project-list {
    az devops project list $args
}

function devops-project-create {
    param(
        $projectName,
        $projectDescription,
        $visibility = 'private'
    )

    az devops project create --name $projectName --description $projectDescription --visibility $visibility  
}

function devops-repos-create {
<#
    Create a Git repository in a team project.
#>
    param(
        $repoName,
        $project
    )

    az repos create --name $repoName --project $project $args
}