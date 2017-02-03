FROM elasticsearch:5.2

WORKDIR /usr/share/elasticsearch

RUN bin/elasticsearch-plugin install discovery-ec2 && bin/elasticsearch-plugin install repository-s3

COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY config/elasticsearch /etc/default/elasticsearch

VOLUME /usr/share/elasticsearch/data

EXPOSE 9200 9300