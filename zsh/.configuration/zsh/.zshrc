# vi: set ft=zsh :

# enable completion
autoload -Uz compinit
compinit

# aliases
if [ -d ${XDG_CONFIG_HOME}/zsh/aliases ]
then
	for file in ${XDG_CONFIG_HOME}/zsh/aliases/*
	do
		if [ -f "${file}" ]
		then
			source "${file}"
		fi
	done
	unset file
fi

# initialization files
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
