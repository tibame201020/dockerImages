docker pull tibame201020/weblogic14
docker run -d --name wls14 \
             -p 7001:7001 \
             -v ./:/u01/oracle/properties \
             -e ADMINISTRATION_PORT_ENABLED=false -e DOMAIN_NAME=base_domain \
             tibame201020/weblogic14