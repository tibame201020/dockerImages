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

echo "username=$docker_weblogic14_user" > domain.properties
echo "password=$docker_weblogic14_password" >> domain.properties

docker pull tibame201020/weblogic14

docker run -d --name wls14 \
             -p 7001:7001 \
             -v $(pwd)/domain.properties:/u01/oracle/properties/domain.properties \
             -e ADMINISTRATION_PORT_ENABLED=false -e DOMAIN_NAME=base_domain \
             tibame201020/weblogic14
