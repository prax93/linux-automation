#! /bin/bash

# Set env Variable to disable apt user Interaction when script runs
export DEBIAN_FRONTEND=noninteractive

# Set variable for notification server
ntfyUrl=http://ntfy.home.local/server

# Update returns 0 if packages are out of date
apt update
updateExitCode=$?

if [ $updateExitCode -eq 0 ]; then
	postContent=$(apt list | tail -n +2 | cut -d/ -f1)
	apt upgrade -y && 
	curl -X POST -d "$(hostname): Successfully Updated 😀" $ntfyUrl || curl -X POST -d "$(hostname): Update Failed :(" $ntfyUrl
	logger "Successfully finished apt update & apt upgrade"
fi

logger "Checking for Restart"

restartRequired=/var/run/reboot-required

if [ -e "$restartRequired" ]; then
	content=$(cat "$restartRequired")
	curl -X POST -d "$(hostname): $content" $ntfyUrl
	logger "Reboot required"
fi
