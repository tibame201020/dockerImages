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

docker run -d --name wls14 --rm \
             -p 7001:7001 \
             -v $(pwd)/mysql-connector-java-commercial-8.0.14.jar:/u01/oracle/oracle_common/modules/mysql-connector-java-commercial-8.0.14/mysql-connector-java-commercial-8.0.14.jar \
             -v $(pwd)/domain.properties:/u01/oracle/properties/domain.properties \
             -v $(pwd)/user_projects:/u01/oracle/user_projects \
             -v $(pwd)/home:/home \
             -e ADMINISTRATION_PORT_ENABLED=false -e DOMAIN_NAME=base_domain -e TZ=Asia/Taipei \
             tibame201020/weblogic:14
