#!/bin/bash
docker build -t sunil .
docker_image_ID=`docker images |sed -n '2p' |awk '{print $3 }'`
#echo -e $docker_image_ID
docker run -dt --name task $docker_image_ID>/dev/null
Container_ID=`docker ps -a | sed -n '2p' |awk '{print $1}'`
echo -e "Enter the movie name:"
read Movie
docker exec -it $Container_ID ./sunil.sh $Movie /bin/bash
docker rm -f $Container_ID>/dev/null 

