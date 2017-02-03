FROM elasticsearch:5.2

WORKDIR /usr/share/elasticsearch

RUN bin/elasticsearch-plugin install cloud-aws && bin/elasticsearch-plugin install mobz/elasticsearch-head && bin/elasticsearch-plugin install repository-s3

COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY config/elasticsearch /etc/default/elasticsearch

VOLUME /usr/share/elasticsearch/data

EXPOSE 9200 9300
