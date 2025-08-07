#!/bin/bash
# Test script to verify the orders endpoint returns at least one order

BASE_URL=http://localhost:8080/api/v1

ORDERS=$(curl -s $BASE_URL/orders)
ORDER_COUNT=$(echo $ORDERS | jq '.orders | length')

if [[ $ORDER_COUNT -ge 1 ]]; then
    echo "✅ Orders endpoint returned $ORDER_COUNT orders - Test Passed"
else
    echo "❌ Orders endpoint returned $ORDER_COUNT orders - Test Failed"
fi
