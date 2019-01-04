function docker-run-node-8 {
  # process.env.NODE_VERSION  
  docker run -it node:8 
}

function docker-run-node-9 {
  docker run -it node:9  
}

function docker-run-node-latest {
  docker run -it node:latest  
}


function docker-run-container-webapp {
  # https://hub.docker.com/r/jalalhejazi/container-webapp/

  docker run -d -p 1234:8080 jalalhejazi/container-webapp
}


function docker-run-rest-server{
  docker run -d -p 2222:80 clue/json-server http://jsonplaceholder.typicode.com/db
}


