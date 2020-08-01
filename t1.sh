#!/usr/bin/env bash

# Generates AG for example 1, no graph.png or graph.dot generated

ABS_PATH=$(readlink -f "$0")
ABS_PATH=$(dirname "$ABS_PATH")
echo $ABS_PATH
echo $ABS_PATH/build/
if [ ! -d "$ABS_PATH/build/" ] 
then
    echo "$ABS_PATH/build does not exist. Make sure to build ag_gen!" 
    exit
fi
cd $ABS_PATH/build/
$ABS_PATH/clear_db.sh
$ABS_PATH/build/ag_gen -n $ABS_PATH/examples/1.nm -x $ABS_PATH/examples/1.xp 24 96