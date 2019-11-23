#!/bin/bash
ACCESS_TOKEN="SukzRh1Dl3MPtPodPjwY" # Device Access Token
PROTOCOL="http"
HOST_NAME="iotufrpe2019.ddns.net:9191"
API_BASE="${PROTOCOL}://${HOST_NAME}/api/v1"
HEADER="Content-Type:application/json"

#echo "Exemplo de Comando gerado"
#echo "curl -v -X POST -d \"{\\\"temperature\\\": 28}\" ${API_BASE}/${ACCESS_TOKEN}/telemetry --header ${HEADER}"

# Please replace $HOST_NAME and $ACCESS_TOKEN with corresponding values.
curl -v -X POST -d "{\"temperature\": 25, \"ph\":6.1}" $API_BASE/$ACCESS_TOKEN/telemetry --header $HEADER

# For example, $HOST_NAME in case of live demo server:
#curl -v -X POST -d "{\"temperature\": 25}" https://demo.thingsboard.io/api/v1/$ACCESS_TOKEN/telemetry --header $HEADER

# For example, $HOST_NAME in case of local installation:
#curl -v -X POST -d "{\"temperature\": 25}" http://localhost:8080/api/v1/$ACCESS_TOKEN/telemetry --header $HEADER


