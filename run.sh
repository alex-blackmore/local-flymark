#!/bin/dash
if $(which docker 2>/dev/null 2>&1); then
    OCI=docker
else
    OCI=podman
fi
echo "Using $OCI"
$OCI exec -it local-flymark tmux new-session
