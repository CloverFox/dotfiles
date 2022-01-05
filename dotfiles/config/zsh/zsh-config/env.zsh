#environment variable

#set $VISUAL, as some programs (correctly) use that instead of $EDITOR
export VISUAL=nvim
export EDITOR="$VISUAL"

#tip: to find what key your pressing to get the codes below, do "cat > /dev/null" then press the key

#needed for vim for some raisen
stty erase '^?'

#emacs style (like bash)
bindkey -e

#sane deletion
bindkey '\e[3~' delete-char

#forward and back search
bindkey '^r' history-incremental-search-backward
bindkey '^f' history-incremental-search-forward

#home and end
bindkey '^[OH' beginning-of-line
bindkey '^[OF' end-of-line

#ctrl left and right
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word


# add local bins and script directory to path
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/sbin:$PATH
