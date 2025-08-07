#!/bin/bash
# test calling the api
BASE_URL=http://localhost:8080/api/v1
API_KEY="your-api-key"

HEALTH=$(curl -s $BASE_URL/health)
echo Health returned $HEALTH

API_1=$(curl -s $BASE_URL/endpoint1)
echo endpoint1 returned $API_1

API_2=$(curl -s $BASE_URL/endpoint2)
echo endpoint2 returned $API_2

# call the orders endpoint, you can expand this or copy it to mock more complex
# data and test the response
ORDERS=$(curl -s $BASE_URL/orders)
echo orders returned $ORDERS
echo $ORDERS | jq '.'

# check the response from the secured endpoint with an INVALID key
RESPONSE_CODE=$(curl -H "x-api-key: invalid-key" -o /dev/null -s -w "%{http_code}\n" $BASE_URL/secured_endpoint)
if [[ $RESPONSE_CODE -eq 403 ]]; then
    echo "✅ Calling secured_endpoint with an INvalid key returns Http status code $RESPONSE_CODE - expected"
else
    echo "❌ Calling secured_endpoint with an INvalid key returns Http status code $RESPONSE_CODE and is not 403 as expected when calling with an INVALID key"
fi

# check the response from the secured endpoint with a valid key
RESPONSE_CODE=$(curl -H "x-api-key: $API_KEY" -o /dev/null -s -w "%{http_code}\n" $BASE_URL/secured_endpoint)
if [[ $RESPONSE_CODE -eq 200 ]]; then
    echo "✅ Calling secured_endpoint with a VALID key returns Http status code $RESPONSE_CODE - expected"
else
    echo "❌ Calling secured_endpoint with a VALID key returns Http status code $RESPONSE_CODE - NOT expected"
fi
