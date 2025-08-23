#!/bin/dash

./stop.sh

docker build -t local-flymark . &&
docker run -d -it --name "local-flymark" -v $PWD:/marking local-flymark 
