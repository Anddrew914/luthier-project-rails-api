#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/instruments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=eac73dcfb3904e618f29b73829a47054" \
  --data '{
    "instrument": {
      "instrument_type": "Stradivarius",
      "price": "60.00"
    }
  }'

echo
