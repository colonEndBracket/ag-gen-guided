#!/usr/bin/env bash

# Generates AG for cars3_rsh and generates a graph.dot graph.png

ABS_PATH=$(readlink -f "$0")
ABS_PATH=$(dirname "$ABS_PATH")
if [ ! -d "$ABS_PATH/build/" ] 
then
    echo "$ABS_PATH/build does not exist. Make sure to compile the generator!"
    echo "$ABS_PATH/test.sh can compile a generator and run a test for you..." 
    exit
fi
cd $ABS_PATH
$ABS_PATH/clear_db.sh
$ABS_PATH/build/ag_gen -n $ABS_PATH/examples/cars3_rsh.nm -x $ABS_PATH/examples/cars3_rsh.xp -g $ABS_PATH/graph.dot 24 96
dot $ABS_PATH/graph.dot -Tpng -o $ABS_PATH/graph.png
