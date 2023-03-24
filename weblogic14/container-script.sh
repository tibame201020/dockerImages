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
docker run -d --name wls14 \
             -p 7001:7001 \
             -v ./:/u01/oracle/properties \
             -e ADMINISTRATION_PORT_ENABLED=false -e DOMAIN_NAME=base_domain \
             tibame201020/weblogic14
