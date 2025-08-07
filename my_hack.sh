#!/bin/bash
# run my little hack script
echo "Running my hack script..."
# Add your commands here
ls
echo "I am running my probe ..."
# Simulate some hacking commands
# we will probe the nginx api at using curl
RESPONSE=$(curl -s $NGINX_API_URL/api/v1/health)
echo "Response from NGINX API: $RESPONSE"
# Check if the response contains a specific string
if [[ $RESPONSE == *"OK"* ]]; then
  echo "NGINX API is healthy."
else
  echo "NGINX API is not healthy."
fi

# echo "Probing $NGINX_API_URL"

# End of hack script
echo "Hack script completed."
