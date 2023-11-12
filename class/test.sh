# JSON -- Javascript Object Notation

# info="$(curl https://f4idu2pd8h.execute-api.us-east-1.amazonaws.com/v1/info | jq -r .body)"
# echo $info | jq .[0].staff[0]

#!/bin/bash

DROPLET_ID="$(curl -s http://169.254.169.254/metadata/v1/id)"

#Prints the public IP only. Goes to droplet > networks > v4 and grabs the content of ip address of first object
droplets=$(curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer $DO_TOKEN" "https://api.digitalocean.com/v2/droplets/$DROPLET_ID")

value="rer.txt"
echo $droplets | jq >> $value
#cat $value


for ee in $(cat $value)
do

# for rr in $(echo $droplets | jq)
# do

 


# droplets=$(curl --request GET \
#   -H "Content-Type: application/json" \
#   -H "Authorization: Bearer $DO_TOKEN" "https://api.digitalocean.com/v2/droplets/$DROPLET_ID")


# value=$(echo $droplets | jq)

# echo $value


 # -H "Authorization: Bearer $DO_TOKEN" "https://api.digitalocean.com/v2/droplets/$DROPLET_ID" | jq .droplet.networks.v4[0].ip_address

#DO_TOKEN is defined in bashrc
