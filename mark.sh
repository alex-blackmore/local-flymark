#!/bin/dash

! test -e /.dockerenv -o -e /run/.containerenv &&
    echo 'error: run inside the container!' &&
    exit 1

flymark scheme.climark cs1521 25T3
