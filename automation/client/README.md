# Readme

## Installation Guide

### ZSH-Shell
```zshell
wget https://raw.githubusercontent.com/prax93/linux-automation/refs/heads/main/automation/client/workoutlog.sh -O "$HOME/.workoutlogger.sh"

echo alias workout="sh ~/.workoutlogger.sh **[File location]**" >> "$HOME/.zshrc"
sourcee "$HOME/.zshrc"
```

### Bash-Shell
```bash
wget https://raw.githubusercontent.com/prax93/linux-automation/refs/heads/main/automation/client/workoutlog.sh -O "$HOME/.workoutlogger.sh"

echo alias configupdater="sh ~/.workoutlogger.sh **[File location]**" >> "$HOME/.bashrc"
source "$HOME/.bashrc"
```
