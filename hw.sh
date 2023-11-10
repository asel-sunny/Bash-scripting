#!/bin/bash




read -p "Please give number of the assignment. It can be from 1 to 5:  " numhw

if [ $numhw == "1" ]; then

#Task 1: Simple Variable Manipulation
    var1="Printing two strings"
    var2="by calling separate vars "
    echo ""
    echo $var1 $var2 
    echo ""
elif [ $numhw == "2" ]; then 

#Task 2: Conditional Statements
    read -p "Please provide a name:  " name
    if [ $name == "John" ]; then
        echo "Hello John!"
    else
        echo "You are not John! Bye !"
    fi

elif [ $numhw == "3" ]; then 

#Task 3: File Manipulation
    read -p "Give the name of the file ..(ps: lucky.txt exists ):  " file
    if [ -r $file ]; then 
    content=$(cat $file)
    echo ""
    echo $content
    echo ""
    elif [ -f $file ]; then
    echo ""
    echo "$file exists but its not readable ... Only root user can read ! "
    else
    echo "$file doesnt exist !"      
    fi

elif [ $numhw == "4" ]; then

#Task 4: Advanced Logic with Loops
    read -p "Please give the string:  " character 
    read -p "How many times you want the string to be printed out?:  " count

    count1=$count
    character2="$character"

        for (( i = 0; i < $count1; ++i ))
            do
                echo $character2
        done


elif [ $numhw == "5" ]; then 

#Task 5: Combining Commands and Logic
    read -p "Give the full path of the directory you want to check :  " path 

    subdircount=$(find $path -maxdepth 1 -type d | wc -l)

    if [[ "$subdircount" -eq 1 ]]; then
        echo "none of interest"
    else
        echo ""
        echo "Listing the contents of $path directory and its subdirectories ! "
        echo ""
        echo ""
        ls -R $path
    fi

else
    echo "Number doesnt exist or something went wrong ." 

fi

