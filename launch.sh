#!/bin/bash

bash data_getter.sh ./target/data.csv
ds=$(date)
echo 'Data updated on: ' ${ds}
docker run --mount type=bind,source="$(pwd)"/target,target=/app velibre $1