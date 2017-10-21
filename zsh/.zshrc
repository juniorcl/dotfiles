PROMPT='%F{red}%n%f@%F{red}%m%f %F{red}%0~%f %# '
RPROMPT='[%F{pink}%?%f]'

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
alias i3='startx $HOME/.xinitrc i3'
alias hl='startx $HOME/.xinitrc hlwm'
alias spectr='startx $HOME/.xinitrc spectr'
alias ptbr='setxkbmap -model abnt2 -layout br -variant abnt2'
alias ls='ls --color --human-readable'
alias hc='herbstclient'
