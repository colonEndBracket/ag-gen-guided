#!/usr/bin/env bash

# Populates database, compiles and runs the generator.

ABS_PATH=$(readlink -f "$0")
ABS_PATH=$(dirname "$ABS_PATH")
$ABS_PATH/clear_db.sh
rm -r $ABS_PATH/build
mkdir $ABS_PATH/build
cd $ABS_PATH/build
cmake -DCMAKE_BUILD_TYPE=Release $ABS_PATH
make ag_gen
$ABS_PATH/build/ag_gen -n $ABS_PATH/examples/thesis_example.nm -x $ABS_PATH/examples/thesis_example.xp 24 96 
