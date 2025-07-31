# Use powerline
USE_POWERLINE="false"
PS1='%n@%m %F{blue}%~ %(?.%F{green}.%F{red})>%f '
#PS1="%n@%m %~ >"
RPROMPT='%F{8}⏱ %*%f'

#golang
alias air='$(go env GOPATH)/bin/air'
export PATH=$PATH:/usr/local/go/bin
# export PATH=$PATH:$(go env GOPATH)/bin
#
export PATH=$PATH:~/scripts

# some more ls aliases
alias ls='ls --color=auto'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

# fun map
alias worldmap='telnet mapscii.me'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias vim="nvim"
alias vi="nvim"
alias vimdiff='nvim -d'
export EDITOR=nvim

#Node Stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
