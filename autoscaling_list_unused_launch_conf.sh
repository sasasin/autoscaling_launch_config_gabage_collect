#!/bin/bash

ALL_ITEMS=$1
RUNNING_ITEMS=$2

cat <(cat $ALL_ITEMS |sort -u) <(join <(cat $ALL_ITEMS | sort -u) <(cat $RUNNING_ITEMS | sort -u) ) | sort | uniq -u
