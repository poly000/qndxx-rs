#!/usr/bin/env bash

response=$(curl -s "https://service-0wsl5m13-1256946954.cd.apigw.tencentcs.com/release/qndxx")

dxx_img=$(echo $response | jq .dxx_img | tr -d \")
title=$(echo $response | jq .title | tr -d \")

mkdir -p dist

cp index.html dist

sed -i s!TITLE!"$title"! dist/index.html
sed -i s!URL!"$dxx_img"! dist/index.html

