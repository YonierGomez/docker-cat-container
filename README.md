# Contenerizamos el gato
## Cat container image
=============================================================================
## Referencia rápida


- ¿Un gato en un container?
- ¿Cuál es nuestro uso?
- ¿Cómo usar esta imagen?
- Arquitectura soportada
- Te invito a visitar mi web

# ¿Un gato en un container?

Este container escucha por el puerto 80, docker es mágia, tanto así que podrás meter un gato en un container.

[![JJh6sZN.md.png](https://iili.io/JJh6sZN.md.png)](https://freeimage.host/i/JJh6sZN)

## ¿Cuál es nuestro uso?

 ### docker cli
 Crear container y exponer el puerto 8080 para tu browser `http://localhost:8080/` o `http://laipdemimaquina:8080/`

```bash

$ docker run --name catcontainer -d -p 8080:80 neytor/catcontainer

```

### docker-compose (recomendado)
```yaml
---
version: '3'
services:
	catcontainer:
	image: neytor/catcontainer
	restart: always
	ports:
	- 8080:80
	networks:
	- mynet
networks:
	mynet:
...
```
## Arquitectura soportada

La arquitectura soportada es la siguiente:

| Arquitectura | Disponible | Tag descarga |
| ------------ | ---------- | ---------------------------- |
| x86-64 | ✅ | docker pull neytor/catcontainer |
| arm64 | ✅ | docker pull neytor/catcontainer:arm |


[![Try in PWD](https://github.com/play-with-docker/stacks/raw/cff22438cb4195ace27f9b15784bbb497047afa7/assets/images/button.png)](http://play-with-docker.com?stack=https://raw.githubusercontent.com/docker-library/docs/db214ae34137ab29c7574f5fbe01bc4eaea6da7e/wordpress/stack.yml)


## Te invito a visitar mi web

Puedes ver nuevos eventos en [https://www.yonier.com/](https://www.yonier.com)