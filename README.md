# INASSE_fds_dockerapp


## COmpile docker
```
docker build -t <NOME_APP> .
```

## Run docker
```
docker run --restart always --privileged -v /www:/www <NOME_APP> <PATH_APP_DOCKER>
```

#Vim tips

##Set hard tabs
```
:set autoindent noexpandtab tabstop=4 shiftwidth=4

## VShow special chars
```
set list
```
