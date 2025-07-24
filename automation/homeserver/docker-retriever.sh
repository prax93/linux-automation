mkdir $HOME/docker-retriever
cd $HOME/docker-retriever
for container in $(docker ps --format '{{.Names}}');
do 
    mkdir "$container"
    cd "$container"
    docker inspect $container --format  '{{json .HostConfig.Binds}}' | jq > "$container"_binds.json
    docker inspect $container --format  '{{json .Mounts}}' | jq > "$container"_mounts.json
    docker inspect $container --format  '{{json .NetworkSettings.Ports}}' | jq > "$container"_ports.json
done;    

