#!/usr/bin/env bash

echo "================="
echo "Checking if container 'hackattic' exists..."
if [ ! "$(sudo docker ps -q -f name=hackattic)" ]; then
    if [ "$(sudo docker ps -aq -f status=exited -f name=hackattic)" ]; then
        echo "---"
        echo "Container exists and is stopped. Starting..."
        sudo docker start hackattic
        while ! nc -vz localhost 5437; do sleep 1; done
    else
        echo "---"
        echo "Container does not exist. Creating..."
        sudo docker run -d --hostname postgres --name postgres -p 127.0.0.1:5437:5432 -e POSTGRES_USER=postgres -e POSTGRES_DB=postgres -e POSTGRES_PASSWORD=postgres postgres
        while ! nc -vz localhost 5437; do sleep 1; done
    fi
else
    echo "---"
    echo "Container exists and is running..."
fi

echo "---"
echo "Dockerized PostgreSQL up on 5437"
echo "Use 'sudo docker stop hackattic' to stop the container and free up CPU/Mem in host."
echo "Use 'sudo docker logs hackattic' to tail postgres logs."
echo "Stop the container and run 'sudo docker rm hackattic' to remove the container and data from host."
echo "Note: docker system prune -a --volume # To delete all anonymous volumes" # https://forums.docker.com/t/stale-data-being-read-from-anonymous-directory-volume-for-postgres-container/116778/2
echo "================="
