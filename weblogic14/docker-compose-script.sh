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

if [ -f user_projects/domains/base_domain/servers/AdminServer/security/boot.properties ]; then
    echo "src/file2.txt already exists, copying file1.txt and overwriting file2.txt"
    cp -f domain.properties user_projects/domains/base_domain/servers/AdminServer/security/boot.properties
fi

docker pull tibame201020/weblogic14
docker compose up
