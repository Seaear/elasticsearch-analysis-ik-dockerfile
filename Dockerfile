ARG ES_Version
FROM docker.elastic.co/elasticsearch/elasticsearch:${ES_Version}
LABEL org.opencontainers.image.authors="liangliangyy@gmail.com"
ARG ES_Version

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -b https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${ES_Version}/elasticsearch-analysis-ik-$ES_Version.zip
