# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch
unsetopt autocd beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':autocomplete:*' fzf-completion yes

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

zstyle :compinstall filename '/home/fox/.zshrc'

#autoload -Uz compinit; compinit
# End of lines added by compinstall


autoload -U promptinit; promptinit

#zstyle :prompt:pure:git:stash show yes

#prompt pure
bindkey "\e[3~" delete-char 
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

