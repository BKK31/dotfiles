# Import wal color scheme
cat ~/.cache/wal/sequences &

# Execute neofetch when Fish shell is opened
neofetch

# Disable the default Fish welcome message
set -g fish_greeting ""

# Start an interactive Fish shell session
fish_prompt

alias ls='ls -l --color=auto'
alias ll='ls -la --color=auto'
