#!/bin/bash


DROPLET_ID="$(curl -s http://169.254.169.254/metadata/v1/id)"

jsondata=$(curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_TOKEN" "https://api.digitalocean.com/v2/droplets" -s)


for tt in $(echo $jsondata | jq ' .droplets[] | .status ' | sed 's/\"//g'); do

    if [[ $tt =~ "active" ]]  #bash regex , comparing command output to a text string
    then
        name=$(echo $jsondata | jq ' .droplets[] | .networks.v4[1].ip_address' )
        echo "$name is active"
    else
        echo "not matched"
    fi

done

## 