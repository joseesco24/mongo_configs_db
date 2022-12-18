# ** info: declaration of the image base version
FROM mongo:6.0

# ** info: declaration of the image env variables
ENV MONGO_INITDB_DATABASE=configs_db
ENV MONGO_INITDB_ROOT_PASSWORD=mongo
ENV MONGO_INITDB_ROOT_USERNAME=mongo

# ** info: declaration of the image working directory
ARG WORKDIR=/home/build

# ** info: creating the image working directory
RUN mkdir -p $WORKDIR

# ** info: copying the js script files from the building context to the working directory
COPY ["collection_1", "$WORKDIR/collection_1/"]
COPY ["collection_2", "$WORKDIR/collection_2/"]

# ** info: copying the shell install script from the building context to the initdb folder
COPY ["mount_db.js", "/docker-entrypoint-initdb.d/"]