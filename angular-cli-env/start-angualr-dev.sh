docker pull tibame201020/angular-develop
docker run -it --rm --name=angular-dev -p 4200:4200 -v $1:/app -w /app tibame201020/angular-develop bash -c "npm install && ng serve --host 0.0.0.0"
