# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

#golang
alias air='$(go env GOPATH)/bin/air'
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin

#deno
export DENO_INSTALL="/home/patrick/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# fun map
alias worldmap='telnet mapscii.me'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias vimdiff='nvim -d'
export EDITOR=nvim

# Squoosh CLI
alias smoz='npx @squoosh/cli --mozjpeg 75 -d ./opt ./*'
alias swebp='npx @squoosh/cli --webp \
  '{"quality":75 \
    "target_size":0 \
    "target_PSNR":0 \
    "method":4 \
    "sns_strength":50 \
    "filter_strength":60 \
    "filter_sharpness":0 \
    "filter_type":1 \
    "partitions":0 \
    "segments":4 \
    "pass":1 \
    "show_compressed":0 \
    "preprocessing":0 \
    "autofilter":0 \
    "partition_limit":0 \
    "alpha_compression":1 \
    "alpha_filtering":1 \
    "alpha_quality":100 \
    "lossless":0 \
    "exact":0 \
    "image_hint":0 \
    "emulate_jpeg_size":0 \
    "thread_level":0 \
    "low_memory":0 \
    "near_lossless":100 \
    "use_delta_palette":0 \
    "use_sharp_yuv":0 \
    }' \
    -d ./opt ./*'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

