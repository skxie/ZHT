#!/bin/bash
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/home/sxie/projects/gprotobuf/protobuf/lib
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/home/sxie/projects/gprotobuf/protobuf-c/lib
export LD_LIBRARY_PATH 
cd projects/ZHT
./examples/benchmark_client 1000 neighbor zht.cfg TCP
