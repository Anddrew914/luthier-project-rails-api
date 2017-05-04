#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/change-password"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=BAhJIiViYzk0NDYzOTAwOTg1NGVjMGE1NWM5OGI3NThkOTkxOQY6BkVG--af89caf32b525d588f3968df87422a2f23f9255c" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${andrew}"'",
      "new": "'"${menibi}"'"
    }
  }'

echo
