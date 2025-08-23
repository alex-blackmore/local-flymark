first, copy the relevant marking scheme into this working directory (obviously dont commit it to the repo though..)
```
touch scheme.climark
# put the scheme in
```

spawn a docker container
```
./start.sh
```

join the docker container (into a tmux session)
```
./run.sh
```

when inside, to mark run
```
flymark scheme.climark cs1521 25T2
```

to escape probably run ctrl+C or something

clean up docker container
```
./stop.sh
```
