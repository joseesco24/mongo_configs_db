# ---------------------------------------------------------------------------------------------------------------------
# ** stage 1: production image
# ---------------------------------------------------------------------------------------------------------------------

# ** info: declaration of the image base version
FROM mongo:6.0.3

# ** info: declaration of the image env variables
ENV MONGO_INITDB_ROOT_PASSWORD=mongo
ENV MONGO_INITDB_ROOT_USERNAME=mongo

# ** info: copying the shell install script from the building context to the initdb folder
COPY ["mongo-init.js", "/docker-entrypoint-initdb.d/"]