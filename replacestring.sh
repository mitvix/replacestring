#!/bin/bash
# This is GNU Software, please share! 
# Replace String in files using grep and sed
# grep -Rl "text_to_find" | xargs sed -i 's/original_text/new_text_replace/g'
# find . -type f -print0 | xargs -0 sed -i 's/original_text/new_text_replace/g'

if [[ -z $1 || -z $2 ]]; then
    echo 'Usage: '${0}' "original_text" "new_text_to_replace"'
    echo 'Or '$0' "original_text" "new_text_to_replace" "*.php"'
    exit
fi

echo "Do you want replace $1 to $2 in files $3? [y/N]"
read response

if [[ $response == "y" || $response == "Y" ]]; then
	echo "Replace content from $1 to $2 in files"
else 
	echo "Proccess Cancelled..."
	exit
fi

if [[ -z $3 ]]; then    
    grep -Rl "$1" | xargs -t sed -i "s/$1/$2/g"
else    
    find . -type f -name "$3" -print0 | xargs -t -0 sed -i "s/$1/$2/g" 
fi

status=$?

if [ "$status" -eq "0" ]; then
    status="[Success]"    
else 
    status="[Error]"
fi
echo "Proccess finished with $status"

