#!/bin/bash



#Printing only the list of hobbies
for hobby in $(seq 0 2); do
    info='{"name" : "Abdul", "age" : 23, "hobbies" : ["video games", "scripting", "cooking"]}'
    echo $info | jq .hobbies[$hobby]
done


#Printing only list of animals inside hobbies
info='{"name" : "Abdul", "age" : 23, "hobbies" : ["video games", "scripting", "cooking", {"animals" : ["bunny", "chicken"]}]}'
echo $info | jq .hobbies[3].animals


# Printing only 0 object which is staff and out of staff printing the first list 
info="$(curl https://f4idu2pd8h.execute-api.us-east-1.amazonaws.com/v1/info | jq -r .body)"
echo $info | jq .[0].staff[0]
echo $info | jq .[0].staff[0].name   #printing only name

