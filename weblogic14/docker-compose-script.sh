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

if [ ! -d "home" ]; then
  mkdir home
fi


echo "username=$docker_weblogic14_user" > domain.properties
echo "password=$docker_weblogic14_password" >> domain.properties

docker compose up -d
