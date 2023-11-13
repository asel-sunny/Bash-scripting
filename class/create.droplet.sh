#!/bin/bash

# curl -X POST \
#   -H "Content-Type: application/json" \
#   -H "Authorization: Bearer $DO_TOKEN" \
#   -d '{"name":"auto-droplet","region":"nyc3","size":"s-1vcpu-1gb","image":"ubuntu-20-04-x64"}' \
#   "https://api.digitalocean.com/v2/droplets" | jq

  #!/bin/bash

DROPLET_ID="$(curl -s http://169.254.169.254/metadata/v1/id)"

#Prints the public IP only. Goes to droplet > networks > v4 and grabs the content of ip address of first object
jsondata=$(curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_TOKEN" "https://api.digitalocean.com/v2/droplets/$DROPLET_ID")

#echo $jsondata

for row in $(echo $jsondata)

# echo $jsondata
