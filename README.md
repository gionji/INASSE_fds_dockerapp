# INASSE_fds_dockerapp


## COmpile docker
```
docker build -t fds .
```

## Run docker
```
docker run -it --restart always --privileged -v /www:/www fds
--env-file env.list

```
## Docker tips
```
docker system prune -a
docker ps -a

docker rmi $(docker ps -q)

```

#Vim tips

##Set hard tabs
```
:set autoindent noexpandtab tabstop=4 shiftwidth=4
```

## VShow special chars
```
set list
```
