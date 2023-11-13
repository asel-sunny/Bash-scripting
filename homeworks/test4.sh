#!/bin/bash

#####  This script works with only one droplet ! #####

DROPLET_ID="$(curl -s http://169.254.169.254/metadata/v1/id)"

jsondata=$(curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_TOKEN" "https://api.digitalocean.com/v2/droplets" -s)

droplet1=$(echo $jsondata | jq .droplets[])


#jq ' .droplets[] | .status ' | sed 's/\"//g'

for tt in $(echo $jsondata); do
    
    echo $tt | jq ' .droplets[] | .status '
    
done

# active1=$(echo $jsondata | jq ' .droplets[] | .status ' | sed 's/\"//g')
# name=$(echo $jsondata | jq ' .droplets[] | .networks.v4[1].ip_address ')

# for tt in $(echo $active1); do 
#     if  [ $tt == "active" ] ; then
#         echo "$name is active "
#     else
#         echo "$name is inactive"
#     fi
# done


#echo $jsondata | jq  .droplets

#echo $jsondata | jq ' .droplets[] | .networks.v4[0].ip_address '

# for tt in $(echo $jsondata | jq ' .droplets[] | .status ' | sed 's/\"//g'); do

#     if [[ $tt =~ "active" ]]  #bash regex , comparing command output to a text string
#     then
#         name=$(echo $jsondata | jq ' .droplets[] | .networks.v4[0].ip_address' )
#         echo "$name is active"
#     else
#         echo "not matched"
#     fi

# done

## Giving wrong output .. checking only the first IP , but not checking 2nd .