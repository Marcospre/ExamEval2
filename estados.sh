#!/bin/bash

docker run -d --name pausado nginx 
docker pause pausado
echo "pausamos el contenedor"

docker run -d --name corriendo nginx 
echo "lo dejamos corriendo"

docker run -d --name parado nginx 
docker stop parado
echo "hacemos un stop del container"

docker run -d --name reiniciado nginx 
docker stop reiniciado
echo "paramos el contenedor y lo volvemos a reiniciar"
docker restart reiniciado

docker run -d --name matado nginx 
echo "matamos el contenedor"
docker kill matado

echo "creamos un container"
docker create --name creado hello-world

echo "mostramos lso estados de los contenedores"
docker ps -a

echo "Eliminamos los contenedores"

docker unpause pausado
docker stop pausado
docker rm pausado
docker stop corriendo
docker rm corriendo
docker rm parado
docker stop reiniciado
docker rm reiniciado
docker rm matado
docker rm creado

docker ps -a