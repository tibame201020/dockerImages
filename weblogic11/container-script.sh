if [ -z "$1" ]; then
  docker_weblogic11_user="weblogic"
else
  docker_weblogic11_user=$1
fi

if [ -z "$2" ]; then
  docker_weblogic11_password="weblogic123"
else
  docker_weblogic11_password=$2
fi

if [ ! -d "user_projects" ]; then
  mkdir user_projects
fi

if [ ! -d "home" ]; then
  mkdir home
fi

echo "username=$docker_weblogic11_user" > boot.properties
echo "password=$docker_weblogic11_password" >> boot.properties

docker run -d --name wls11 --rm \
             -p 6008:7001 \             
             -v $(pwd)/boot.properties:/app/oracle/middleware/user_projects/domains/base_domain/servers/AdminServer/security/boot.properties \
             -v $(pwd)/user_projects:/app/oracle/middleware/user_projects \
             -v $(pwd)/home:/home \
             -e ADMINISTRATION_PORT_ENABLED=false -e DOMAIN_NAME=base_domain -e TZ=Asia/Taipei \
             tibame201020/weblogic11
