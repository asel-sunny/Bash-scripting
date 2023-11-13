#!/bin/bash


#Prints the public IP only. Goes to droplet > networks > v4 and grabs the content of ip address of first object
curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_TOKEN" "https://api.digitalocean.com/v2/droplets/$DROPLET_ID"

  #echo $jsondata