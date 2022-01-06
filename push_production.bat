@echo off
cls
echo Building Production Images...
echo.

docker compose build
docker compose push

echo.
echo You will now need to SSH into your server and run the following commands :
echo.
echo docker compose pull
echo docker compose up -d
echo.