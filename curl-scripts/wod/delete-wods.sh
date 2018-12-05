#!/bin/bash

curl "http://localhost:4741/wods/${ID}" \
--include \
--request DELETE \
--header "Authorization: Token token=${TOKEN}" \

echo
