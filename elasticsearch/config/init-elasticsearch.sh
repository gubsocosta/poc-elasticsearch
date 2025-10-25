#!/bin/bash

# Aguardar Elasticsearch iniciar
until curl -s http://localhost:9200/_cluster/health; do
  sleep 2
done

# Criar template padrão
# Este template define o número de shards e réplicas para todos os índices
curl -X PUT 'http://localhost:9200/_index_template/default-template' \
  -H 'Content-Type: application/json' \
  -d '{
    "index_patterns": ["*"],
    "priority": 1,
    "template": {
      "settings": {
        "number_of_shards": 1,
        "number_of_replicas": 0
      }
    }
  }'
