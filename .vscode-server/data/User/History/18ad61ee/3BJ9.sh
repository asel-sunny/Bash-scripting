#!/bin/bash


DROPLET_ID="$(curl -s http://169.254.169.254/metadata/v1/id)"

#Prints the public IP only. Goes to droplet > networks > v4 and grabs the content of ip address of first object
jsondata=$(curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_TOKEN" "https://api.digitalocean.com/v2/droplets" -s)


#echo $jsondata | jq ' .droplets[] | .status '| awk -F '"' '{ print $1 }'

checking=$(echo $jsondata | jq ' .droplets[] | .status ' | sed 's/\"//g')

if [[ $checking =~ "active" ]]  #bash regex , comparing 
then
    echo "matched"
else
    echo "not matched"
fi

# checking=$(echo $jsondata | jq ' .droplets[] | {name:.name, status:.status}' | grep "status" | awk -F '"' '{ print $4 }')

#     if $checking == "active" ; then 
#         echo "matching"
#     else
#         echo "not matched"
#     fi