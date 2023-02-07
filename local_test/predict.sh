#!/bin/bash

payload=$1
content=${2:-text/csv}

# curl --data-binary @${payload} -H "Content-Type: ${content}" -v http://localhost:8080/invocations

# curl --data-binary @payload.csv -H "Content-Type: ${content}" -v http://localhost:8080/invocations

# curl -d @data.json -v http://localhost:8080/invocations

# curl  --request POST 'http://localhost:8080/invocations' \
# --header 'Content-Type: text/csv' \
# --data-raw '{1, 2, 3}'

curl -v 'http://localhost:8080/ping'