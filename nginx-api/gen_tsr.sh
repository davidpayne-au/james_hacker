#!/bin/bash
# Generate a TSR report from calling an API
REPORT_TITLE="My Test TSR"

# call the API and get the response
BASE_URL=http://localhost:8080/api/v1
API_KEY="your-api-key"

# get the result of API call 1
API_1=$(curl -s $BASE_URL/endpoint1)

# read in the HTML template
HTML=$(cat ./tsr_template.html)

# replace the tokens with the values
HTML=${HTML//\{\{REPORT_TITLE\}\}/$REPORT_TITLE}
HTML=${HTML//\{\{API_1_RESULTS\}\}/$API_1}

# and output the TSR report
echo $HTML > ./TSR_Report.html

