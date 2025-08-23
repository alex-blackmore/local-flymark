#!/bin/dash

if which docker >/dev/null 2>&1; then 
    OCI=docker
else
    OCI=podman
fi

$OCI ps | grep 'local-flymark' >/dev/null &&
($OCI stop local-flymark >/dev/null || exit 1) &&
echo 'stopped old container'

$OCI ps -a | grep 'local-flymark' >/dev/null &&
($OCI rm local-flymark >/dev/null || exit 1) &&
echo 'removed old container'


$OCI images | grep 'local-flymark' >/dev/null && 
($OCI rmi local-flymark >/dev/null || exit 1) &&
echo "removed old image"
