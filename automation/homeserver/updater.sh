#! /bin/bash

# Set env Variable to disable apt user Interaction when script runs
export DEBIAN_FRONTEND=noninteractive

# Set variable for notification server
ntfyUrl=http://ntfy.home.local/server

# Update returns 0 if packages are out of date
apt update
updateExitCode=$?

if [ $updateExitCode -eq 0 ]; then
	packagesLineCount=$(apt list --upgradable | wc -l)	

	if [ $packagesLineCount -gt 1 ]; then
	curl -X POST -d "$(hostname)
$(apt list --upgradable | awk '{{ print $1 " " $2 }}')" $ntfyUrl 
	fi
fi

logger "Checking for Restart"

restartRequired=/var/run/reboot-required

if [ -e "$restartRequired" ]; then
	content=$(cat "$restartRequired")
	curl -X POST -d "$(hostname): $content" $ntfyUrl
	logger "Reboot required"
fi
