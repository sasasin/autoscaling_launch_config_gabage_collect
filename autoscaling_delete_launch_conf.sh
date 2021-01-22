#!/bin/bash
UNUSED_ITEMS=$1
cat $UNUSED_ITEMS \
| while read UNUSED_ITEM; do
	aws autoscaling delete-launch-configuration \
		--launch-configuration-name $UNUSED_ITEM
done
