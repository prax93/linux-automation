echo Starting Docker Retriever Script
mkdir $HOME/docker-retriever

count="$(docker ps -q | wc -l )"

if [[ $count -eq 0 ]]; then 
    echo "No Container are running";

else 
for container in $(docker ps --format '{{.Names}}');
do 
    mkdir "$HOME/docker-retriever/$container"
    cd "$HOME/docker-retriever/$container"
    echo "gathering $container binds"
    docker inspect $container --format  '{{json .HostConfig.Binds}}' | jq > "$container"_binds.json
    echo "gathering $container envs"
    docker inspect jellyseerr --format '{{json .Config.Env}}' | jq > "$container"_envs.json
    echo "gathering $container mounts"
    docker inspect $container --format  '{{json .Mounts}}' | jq > "$container"_mounts.json
    echo "gathering $container ports"
    docker inspect $container --format  '{{json .NetworkSettings.Ports}}' | jq > "$container"_ports.json
done;    

fi;
