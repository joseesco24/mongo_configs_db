# Mongo Configs DB

A really simple mongo db database, the idea is to store here all the apis configs and make them consume the parameters from this db to obtain a dynamic and parametric system that doesn't need to be reloaded to change its behavior

<br/>

## Docker Project commands

**Note:** Before running any of these commands be sure that your **CWD** is **mongo_configs_db** directory.

### Docker Login Into GitHub Container Registry

```bash
docker login -u joseesco24 -p < authentication token > ghcr.io
```

### Docker Access To The Container Terminal

```bash
docker exec -it mongo_configs_db /bin/bash
```

### Docker Push The Image To GitHub Container Registry

```bash
docker push ghcr.io/joseesco24/mongo_configs_db:latest
```

<br/>

## Docker Compose Project Commands

**Note:** Before running any of these commands be sure that your **CWD** is **mongo_configs_db** directory.

### Docker Compose Build Image Using Compose File

```bash
docker-compose -f compose.build.yaml build
```

<br/>
