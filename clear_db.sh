#!/usr/bin/env bash
ABS_PATH=$(readlink -f "$0")
ABS_PATH=$(dirname "$ABS_PATH")
dropdb ag_gen
createdb ag_gen
$ABS_PATH/db_manage.sh -d ag_gen
