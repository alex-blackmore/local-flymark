#!/bin/dash
if $(which docker 2>/dev/null 2>&1); then
    OCI=docker
else
    OCI=podman
fi
./stop.sh

$OCI build -t local-flymark . &&
$OCI run -d -it --name "local-flymark" -v $PWD:/marking local-flymark 
