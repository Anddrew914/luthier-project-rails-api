#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/instruments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=8a9d5dfe68f51d16e2f11e6c4028f23b" \
  --data '{
    "instrument": {
      "instrument_type": "Stradivarius",
      "price": "60.00"
    }
  }'

echo
