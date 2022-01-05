# theme related stuffs

# get zsh-git-prompt from https://github.com/olivierverdier/zsh-git-prompt
if [ -f $HOME/zsh-plugins/zsh-git-prompt/zshrc.sh ]
then
    . $HOME/zsh-plugins/zsh-git-prompt/zshrc.sh
    PROMPT='%{$fg_no_bold[yellow]%}%~%b$(git_super_status) 狐› '
    #override prefix to add a space, this means we dont get a double space from the start ant the end
    ZSH_THEME_GIT_PROMPT_PREFIX=" ("
    # get git-prompt from here https://github.com/woefe/git-prompt.zsh
    # or Install git-prompt.zsh or git-prompt.zsh-git from the AUR
elif [ -f /usr/share/zsh/scripts/git-prompt.zsh ]
then
    source /usr/share/zsh/scripts/git-prompt.zsh
    ZSH_GIT_PROMPT_SHOW_UPSTREAM="no"

    ZSH_THEME_GIT_PROMPT_PREFIX="["
    ZSH_THEME_GIT_PROMPT_SUFFIX="] "
    ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
    ZSH_THEME_GIT_PROMPT_DETACHED="%{$fg_bold[cyan]%}:"
    ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
    ZSH_THEME_GIT_PROMPT_UPSTREAM_SYMBOL="%{$fg_bold[yellow]%}⟳ "
    ZSH_THEME_GIT_PROMPT_UPSTREAM_PREFIX="%{$fg[red]%}(%{$fg[yellow]%}"
    ZSH_THEME_GIT_PROMPT_UPSTREAM_SUFFIX="%{$fg[red]%})"
    ZSH_THEME_GIT_PROMPT_BEHIND="↓"
    ZSH_THEME_GIT_PROMPT_AHEAD="↑"
    ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}✖"
    ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}●"
    ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg[red]%}✚"
    ZSH_THEME_GIT_PROMPT_UNTRACKED="…"
    ZSH_THEME_GIT_PROMPT_STASHED="%{$fg[blue]%}⚑"
    ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔"

    PROMPT='%B%40<..<%~ %b$(gitprompt)'
    #PROMPT+='%(?.%(!.%F{white}❯%F{yellow}❯%F{red}.%F{blue}❯%F{cyan}❯%F{green})❯%f.%F{red}❯❯❯%f) '
    PROMPT+='%(?.%(!.%F{blue}主.%F{cyan})狐%f.%F{red}偽%f)› '
    RPROMPT=''

else
    PROMPT="%{$fg_no_bold[yellow]%}%~%{$reset_color%}%  狐› "
fi

# test
#RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"
