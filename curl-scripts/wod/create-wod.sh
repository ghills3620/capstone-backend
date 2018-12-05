#!/bin/bash

curl "http://localhost:4741/wods" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "wod": {
      "metcon": "'"${METCON}"'",
      "result": "'"${RESULTS}"'"
    }
  }'

echo
