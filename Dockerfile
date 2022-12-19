# ** info: declaration of the image base version
FROM mongo:6.0

# ** info: declaration of the image env variables
ENV MONGO_INITDB_ROOT_PASSWORD=mongo
ENV MONGO_INITDB_ROOT_USERNAME=mongo

# ** info: declaration of the image working directory
ARG WORKDIR=/home/build

# ** info: creating the image working directory
RUN mkdir -p $WORKDIR

# ** info: copying the js script files from the building context to the working directory
COPY ["users_crud_api_python", "$WORKDIR/users_crud_api_python/"]

# ** info: copying the shell install script from the building context to the initdb folder
COPY ["mount_db.sh", "/docker-entrypoint-initdb.d/"]

# ** info: converting the shell script to unix formatt
RUN apt-get update
RUN apt-get install -y dos2unix
RUN dos2unix /docker-entrypoint-initdb.d/mount_db.sh