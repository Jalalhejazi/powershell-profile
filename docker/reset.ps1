
function docker-container-remove-all {
    docker container rm $(docker container ls -aq) -f
}

function docker-container-list {
    docker container list --all
}

function docker-container-process {
    docker container ps --all
}

function docker-image-list {
    docker image list 
}

function docker-image-remove-name {
    param($imageName)
    docker image rm $imageName  -f  
}

function docker-image-remove-unused {
    docker image prune --force
}

function docker-image-remove-all {
    docker image rm $(docker image ls -aq) -f  
}

function docker-reset {
    docker-container-remove-all
    docker-image-remove-all
    docker-image-remove-unused
}