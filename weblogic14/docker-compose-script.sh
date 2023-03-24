if [ -z "$1" ]; then
  docker_weblogic14_user="weblogic"
else
  docker_weblogic14_user=$1
fi

if [ -z "$2" ]; then
  docker_weblogic14_password="weblogic123"
else
  docker_weblogic14_password=$2
fi

if [ ! -d "user_projects" ]; then
  mkdir user_projects
fi

echo "username=$docker_weblogic14_user" > domain.properties
echo "password=$docker_weblogic14_password" >> domain.properties

docker pull tibame201020/weblogic14
docker compose up -d
