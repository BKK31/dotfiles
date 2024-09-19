autoload -Uz compinit
setopt PROMPT_SUBST
compinit
zstyle ':completion:*' menu select
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY         # Append to the history file, rather than overwriting it
setopt INC_APPEND_HISTORY     # Write to the history file immediately, not when the shell exits
setopt SHARE_HISTORY          # Share history across all Zsh sessions
setopt HIST_IGNORE_DUPS       # Ignore duplicate commands in the history
setopt HIST_IGNORE_SPACE      # Ignore commands that start with a space
setopt HIST_FIND_NO_DUPS      # Do not display duplicates in history search
setopt HIST_REDUCE_BLANKS     # Remove unnecessary blanks before adding to history



PROMPT='%B%F{033}-[󰣇]- %B%F{003}%n %B%F{026}@ %B%F{045}%m
%B%F{015}%~ >%b%F{208} '

alias ls='ls -l --color=auto'
alias ll='ls -la --color=auto'
alias ff='fastfetch'
alias py='source ~/myenv/bin/activate'

# ff
fastfetch
export PATH="~/github/git:$PATH"
export PATH="/usr/sbin/python:$PATH"
