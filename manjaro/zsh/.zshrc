## zsh config ##
autoload -Uz compinit
compinit

PROMPT='%F{red}%n%f@%F{red}%m%f %F{red}%1~%f %# '
RPROMPT='[%F{yellow}%?%f]'

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY  

## options of commands to differents OS##
if test $(uname -v | grep -Eo '(U|u)buntu)') == 'Ubuntu'
then
    alias python='python3'
    alias python2='python2'
else
    alias ls='ls --color=auto --human-readable'
fi
