#!/bin/bash

curl "http://localhost:4741/breweries" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
