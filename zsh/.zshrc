PROMPT='%F{red}%n%f@%F{red}%m%f %F{red}%0~%f %# '
RPROMPT='[%F{yellow}%?%f]'

## history
##########
##########
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

## alias
########
########
alias i3='startx /home/junior/.xinitrc i3'
alias herbst='startx $HOME/.xinitrc herbst'
alias ptbr='setxkbmap -model abnt2 -layout br -variant abnt2'
alias ls='ls --color --human-readable'
