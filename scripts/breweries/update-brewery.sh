#!/bin/bash

curl "http://localhost:4741/breweries/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "brewery": {
      "name": "'"${NAME}"'",
      "location": "'"${LOCATION}"'",
      "visited": "'"${VISITED}"'",
      "beers_tasted": "'"${BEERS}"'",
      "notes": "'"${NOTES}"'"
    }
  }'

echo
