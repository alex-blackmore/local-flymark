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
./mark.sh
```

to get out of container run `^C^D`

clean up docker container
```
./stop.sh
```
