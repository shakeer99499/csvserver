#!/bin/bash

echo "$(tput  setaf 2) Welcome to shell script to generate random "

echo "$CSVSERVER_BORDER"

file=inputFile
rm $file
touch $file
echo "Using for loop method # 2... "
for (( i=1; i<=10; i++ ))
do
     echo "$i,  $RANDOM" |& tee $file
done

if [ -r $file ]
then
        echo "has readable permission"
else
        chmod 644 $file
fi

