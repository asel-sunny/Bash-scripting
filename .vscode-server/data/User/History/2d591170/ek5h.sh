#!/bin/bash


DROPLET_ID="$(curl -s http://169.254.169.254/metadata/v1/id)"

jsondata=$(curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_TOKEN" "https://api.digitalocean.com/v2/droplets" -s) #to not show progress bar in output 

#echo $jsondata | jq ' .droplets[] | .networks.v4[1].ip_address'

for tt in $(echo $jsondata | jq ' .droplets[] | .networks.v4[1].ip_address'); do
     echo $tt 
done