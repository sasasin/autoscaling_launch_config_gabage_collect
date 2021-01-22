#!/bin/bash

MAX_ITEMS=10

autoscaling-list-launch-conf()
{
	NEXT_TOKEN=$1
	if [ "${NEXT_TOKEN}" == "" ]; then
		RESPONSE=$(
			aws autoscaling describe-launch-configurations \
			--max-items "${MAX_ITEMS}"
		)
	else
		RESPONSE=$(
			aws autoscaling describe-launch-configurations \
			--max-items "${MAX_ITEMS}" \
			--starting-token "${NEXT_TOKEN}"
		)
	fi

	echo $RESPONSE \
	| jq -r '.LaunchConfigurations[].LaunchConfigurationName'
	
	NEXT_TOKEN=$(echo "${RESPONSE}" | jq -r '.NextToken')
	if [ "${NEXT_TOKEN}" != "null" ]; then
		autoscaling-list-launch-conf "${NEXT_TOKEN}"
	fi
}

autoscaling-list-launch-conf ""
