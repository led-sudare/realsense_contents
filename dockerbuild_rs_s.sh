#!/bin/sh
cname=`cat ./rs_server/cname`
docker build ./rs_server -t $cname
docker run -t --init --name $cname -v `pwd`/$cname:/work/ -p 5002:5002 $cname

#docker run -t --init --privileged --name $cname -v `pwd`:/work/ $cname