. ./build.sh
docker run -e "APP_MESSAGE=Yo" -e "APP_PORT=8080" -p "8080:8080" --rm --name moku stalchmst/moku:latest