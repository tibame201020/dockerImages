if [ -z "$1" ]; then
  docker_weblogic14_user="weblogic"
else
  docker_weblogic14_user=$1
fi

if [ -z "$2" ]; then
  docker_weblogic14_password="weblogic123"
else
  docker_weblogic14_password=$1
fi

export docker_weblogic14_user=docker_weblogic14_user
export docker_weblogic14_password=docker_weblogic14_password

docker pull tibame201020/weblogic14
docker compose up
