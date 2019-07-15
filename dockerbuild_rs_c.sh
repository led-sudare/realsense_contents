#!/bin/sh
cname=`cat ./rs_capture/cname`
docker build ./rs_capture -t $cname
docker run -t --init --privileged --name $cname -v `pwd`/$cname:/work/ $cname