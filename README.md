# Setup Elasticsearch

Crie os novos diretorios e defina a propriedade dos diretórios para o ID de usuário/grupo 1000

```shell
mkdir -p elasticsearch/data
chown -Rfv 1000:1000 elasticsearch/data

mkdir -p kibana/data
chown -Rfv 1000:1000 kibana/data

```


Substitua o valor da env ENCRYPTION_KEY pelo valor gerado do comando abaixo:

```shell
tr -cd '[:alnum:]' < /dev/urandom | fold -w "64" | head -n 1

```

