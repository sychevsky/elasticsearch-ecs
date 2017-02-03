FROM elasticsearch:5.2

WORKDIR /usr/share/elasticsearch

RUN bin/plugin install cloud-aws && bin/plugin install mobz/elasticsearch-head && bin/plugin install repository-s3

COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY config/elasticsearch /etc/default/elasticsearch

VOLUME /usr/share/elasticsearch/data

EXPOSE 9200 9300
