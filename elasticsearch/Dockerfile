ARG ELASTIC_VERSION

# https://www.docker.elastic.co/
FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTIC_VERSION:-8.18.7}

USER root

RUN apt update && \
    apt list --upgradable -a && \
    apt install -y \
    curl \
    net-tools \
    unzip \
    vim \
    wget && \
    apt clean -y && \
    rm -rf /var/lib/apt/lists/*

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu

RUN chown -R elasticsearch:elasticsearch /usr/share/elasticsearch

USER elasticsearch

# Expose Elasticsearch port
EXPOSE 9200 9300
