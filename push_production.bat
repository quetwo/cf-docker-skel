@echo off
cls
echo Building Production Images...
echo.

SET DOCKER_TLS_VERIFY=
SET DOCKER_HOST=
SET DOCKER_CERT_PATH=
SET DOCKER_MACHINE_NAME=

docker-compose -f docker-compose.prod.yml build
docker-compose -f docker-compose.prod.yml push

cls
echo Production Servers Updating...
echo.

SET DOCKER_TLS_VERIFY=1
SET DOCKER_HOST=   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
SET DOCKER_CERT_PATH=  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
SET DOCKER_MACHINE_NAME=    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
SET COMPOSE_CONVERT_WINDOWS_PATHS=true


docker-compose -f docker-compose.prod.yml pull
docker-compose -f docker-compose.prod.yml down
docker-compose -f docker-compose.prod.yml up -d

SET DOCKER_TLS_VERIFY=
SET DOCKER_HOST=
SET DOCKER_CERT_PATH=
SET DOCKER_MACHINE_NAME=
