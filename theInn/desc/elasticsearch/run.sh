#!bin/bash
echo "Run.sh (Elasticsearch)"

# run elasticsearch with the elasticsearch user
runuser -l elasticsearch -c '~/elasticsearch-2.4.0/bin/elasticsearch'
