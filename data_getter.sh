#!/bin/bash


#API
URL='https://opendata.paris.fr/api/v2/catalog/datasets/'
DATASET='velib-disponibilite-en-temps-reel/'
OUTPUT_TYPE='exports/csv'
COLUMNS='?select=stationcode%2Cis_installed%2Cnumbikesavailable%2Cduedate%2Cnom_arrondissement_communes'
LIMIT='&limit=-1'
OFFSET='&offset=0'
TIMEZONE='&timezone=UTC'

#ARGS
OUTPUT_PATH=$1
QUERY=$URL$DATASET$OUTPUT_TYPE$COLUMNS$LIMIT$OFFSET$TIMEZONE

echo "Getting data from : " ${URL}
echo "Target file is stored at: " $OUTPUT_PATH

curl -s -X 'GET' $QUERY -H 'accept: */*' > $OUTPUT_PATH