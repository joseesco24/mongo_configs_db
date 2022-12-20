# ** info: declaration of the image base version
FROM mongo:6.0.3

# ** info: declaration of the image env variables
ENV MONGO_INITDB_ROOT_PASSWORD=mongo
ENV MONGO_INITDB_ROOT_USERNAME=mongo

# ** info: declaration of the image working directory
ARG WORKDIR=/home/build

# ** info: creating the image working directory
RUN mkdir -p $WORKDIR

# ** info: copying the shell install script from the building context to the initdb folder
COPY ["mongo-init.js", "/docker-entrypoint-initdb.d/"]