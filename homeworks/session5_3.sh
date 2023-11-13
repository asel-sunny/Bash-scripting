#!/bin/bash

#### Creating a droplet , however couldnt specify project name where droplet needs to be created 

curl -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_WR_TOKEN" \
  -d '{"name":"auto-droplet","region":"nyc3","size":"s-1vcpu-1gb","image":"ubuntu-20-04-x64"}' \
  "https://api.digitalocean.com/v2/droplets"


