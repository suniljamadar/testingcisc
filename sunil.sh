#!/bin/bash
MovieName=$1
ReleaseYear=$2
APIURL="http://www.omdbapi.com/?apikey=42a75383&t=$1&y=$2"

if [ -z $1 ]
then
        echo "Provide the Movie Name"
else
        data=`curl -s $APIURL`
fi
#echo $data

name=`echo $data | jq .Title`
ratings=`echo $data | jq .Ratings[1].Value`

echo "Movie Name = $name"
echo "Rotton tomatoes = $ratings"

