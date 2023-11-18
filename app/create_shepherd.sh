docker service create --name shepherd \
  --constraint "node.role==manager" \
  --env SLEEP_TIME="1m" \
  --env ROLLBACK_ON_FAILURE="true" \
  --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock,ro \
  containrrr/shepherd