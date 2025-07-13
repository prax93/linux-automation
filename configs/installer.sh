#! /bin/bash

# Git pull or clone depending on folder existence master
if [[ ! -d "$HOME/tmp/" ]]; then
    git clone -v "https://github.com/prax93/linux-automation.git" "$HOME/tmp"
elif [[ -d "$HOME/tmp/" ]]; then
    cd "$HOME/tmp/configs" || exit
    git pull -v origin main
fi

cd "$HOME/tmp/configs" || exit

# Copy Configs to home directory
for directory in $(ls -l | awk 'NR>1 {{print $9}}'); do
    if [[ -d "$directory" ]]; then
        cp -rv "$directory" ~
    fi
done

# Clean up
rm -rf "$HOME/tmp"

