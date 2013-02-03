#!/bin/bash
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/home/sxie/projects/gprotobuf/protobuf/lib
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/home/sxie/projects/gprotobuf/protobuf-c/lib
export LD_LIBRARY_PATH 
cd projects/ZHT
ip=$(ifconfig eth0 |grep "inet addr" |cut -d: -f2 |cut -d" " -f1)
nohup ./bin/server_zht 50000 neighbor zht.cfg TCP ip &
#nohup ./bin/server_zht 50009 neighbor zht.cfg TCP ip &
#nohup ./bin/server_zht 50011 neighbor zht.cfg TCP ip &
