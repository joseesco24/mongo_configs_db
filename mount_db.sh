#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------
# ** info: schema 1 installation
# ---------------------------------------------------------------------------------------------------------------------

# ** info: installations using mongo/root user
FILE=/home/build/users_crud_api_python/mongo/install/0_install.js
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    mongosh $FILE
else
    echo "script $FILE no encontrado"
fi

# ** info: installations using schema 1 user
FILE=/home/build/users_crud_api_python/users_crud_api_python_user/install/0_install.js
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    mongosh $FILE
else
    echo "script $FILE no encontrado"
fi
