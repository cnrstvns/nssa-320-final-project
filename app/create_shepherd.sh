docker service create --name shepherd \
  --constraint "node.role==manager" \
  --env SLEEP_TIME="1m" \
  --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock \
  containrrr/shepherd