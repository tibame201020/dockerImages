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

echo -e "username=$docker_weblogic14_user\npassword=$docker_weblogic14_password" > domain.properties

docker pull tibame201020/weblogic14
docker run -d --name wls14 \
             -p 7001:7001 \
             -v ./:/u01/oracle/properties \
             -v ./:/u01/oracle/user_projects \
             -e ADMINISTRATION_PORT_ENABLED=false -e DOMAIN_NAME=base_domain \
             tibame201020/weblogic14
