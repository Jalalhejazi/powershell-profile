function docker-run-ubuntu{
    docker run -it   --detach-keys ctrl-x ubuntu
}


function docker-run-azure-cli{
    docker run -it   --detach-keys ctrl-x microsoft/azure-cli
}

function whitesource-cli{
    docker run --rm --name dockerua --mount type=bind,source=$($pwd),target=/home/wss-scanner/Data/ -e WS_APIKEY="db43ff56382e402e923184c134c785c686dcc2cee94e41a08d66586d0f8bd0bc" -e WS_PRODUCTNAME="FittingSoftware" -e WS_PROJECTNAME="FittingSoftware" -e WS_WSS_URL="https://app-eu.whitesourcesoftware.com/agent" whitesourceft/dockerua

    chrome "https://app-eu.whitesourcesoftware.com/Wss/WSS.html#!home"
}
