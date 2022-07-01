# vi: set ft=zsh :

# enable completion
autoload -Uz compinit
compinit

# aliases
alias tmux="tmux -f ${XDG_CONFIG_HOME}/tmux/tmux.conf"

# source file in run_commands directory
if [ -d ${XDG_CONFIG_HOME}/zsh/run_commands ]
then
	for file in ${XDG_CONFIG_HOME}/zsh/run_commands/*
	do
		if [ -f "${file}" ]
		then
			source "${file}"
		fi
	done
	unset file
fi
