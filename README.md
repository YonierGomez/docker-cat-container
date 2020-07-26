Centro multimedia emby
======================

  
# ¿Un gato en un container?

Este container escucha por el puerto 80, docker es mágia, tanto así que podrás meter un gato en un container.

# ¿Cómo usar esta imagen?

## Crear container y exponer el puerto 80 para tu browser http://localhost/ o http://laipdemimaquina/

```console
$ docker run  --name catcontainer -d -p 80:80 neytor/catcontainer
```

## ...Correr vía  [`docker-compose`](https://github.com/docker/compose)

```yaml
version: '3'

services:

  embyneytor:
    image: neytor/catcontainer
    restart: always
    ports:
      - 80:80
    networks:
      - mynet
      
  networks:
    mynet:

```

[![Try in PWD](https://github.com/play-with-docker/stacks/raw/cff22438cb4195ace27f9b15784bbb497047afa7/assets/images/button.png)](http://play-with-docker.com?stack=https://raw.githubusercontent.com/docker-library/docs/db214ae34137ab29c7574f5fbe01bc4eaea6da7e/wordpress/stack.yml)

## Te invito a visitar mi web
Puedes ver nuevos eventos en [https://www.neytor.com/](https://www.neytor.com).
