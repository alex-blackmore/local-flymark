#!/bin/dash

docker ps | grep 'local-flymark' >/dev/null &&
(docker stop local-flymark >/dev/null || exit 1) &&
echo 'stopped old container'

docker ps -a | grep 'local-flymark' >/dev/null &&
(docker rm local-flymark >/dev/null || exit 1) &&
echo 'removed old container'


docker images | grep 'local-flymark' >/dev/null && 
(docker rmi local-flymark >/dev/null || exit 1) &&
echo "removed old image"