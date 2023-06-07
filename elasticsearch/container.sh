if [ ! -d "esdata" ]; then
  mkdir esdata
fi

docker run -d --rm\
 -v $(pwd)/esdata:/usr/share/elasticsearch/data\
 -p 9200:9200 -p 9300:9300\
 -e "discovery.type=single-node"\
 -e "xpack.security.enabled=false"\
 --name=elasticsearch\
 docker.elastic.co/elasticsearch/elasticsearch:8.7.1
