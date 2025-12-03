#!/bin/dash

! test -e /.dockerenv &&
    echo 'error: run inside the container!' &&
    exit 1

flymark scheme.climark cs1521 25T3
