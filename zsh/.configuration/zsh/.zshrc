# vi: set ft=zsh :

# enable completion
autoload -Uz compinit
compinit

# aliases
alias tmux="tmux -f ${XDG_CONFIG_HOME}/tmux/tmux.conf"
