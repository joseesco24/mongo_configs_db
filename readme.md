# Postgres Users DB

A really simple mongo db database, the idea is to store here all the apis configs and make them consume the parameters from this db to obtain a dynamic and parametric system that doesn't need to be reloaded to change its behavior

<br/>

## Docker Project commands

**Note:** Before running any of these commands be sure that your **CWD** is **mongo_configs_db** directory.

### Docker Build Image Using Compose File

```bash
docker-compose -f compose.project.yaml build
```

### Docker Start Service Using Compose File

```bash
docker-compose -f compose.project.yaml up
```

### Docker Stop Service Using Compose File

```bash
docker-compose -f compose.project.yaml down
```

### Docker Login Into GitHub Container Registry

```bash
docker login -u joseesco24 -p < authentication token > ghcr.io
```

### Docker Push The Image To GitHub Container Registry

```bash
docker push ghcr.io/joseesco24/postgres_users_db:latest
```

<br/>