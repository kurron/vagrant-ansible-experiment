#!/bin/bash

echo Configuring cluster
/bin/sed --in-place --expression 's/#cluster.name: elasticsearch/cluster.name: elasticsearch/g' /etc/elasticsearch/elasticsearch.yml 

echo Configruing node
/bin/sed --in-place --expression 's/#node.name: "Franz Kafka"/node.name: "smoker"/g' /etc/elasticsearch/elasticsearch.yml 
