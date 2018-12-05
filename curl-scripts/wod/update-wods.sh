#!/bin/bash

curl --include --request PATCH "http://localhost:4741/wods/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "wod": {
      "metcon": "'"${METCON}"'",
      "result": "'"${RESULTS}"'"
    }
  }'

echo
