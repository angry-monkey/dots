# vi: set ft=zsh :

autoload -Uz compinit
compinit

if [ -d ${XDG_CONFIG_HOME}/zsh/aliases ]
then
	for rc_file in ${XDG_CONFIG_HOME}/zsh/aliases/*
	do
		if [ -f "${rc_file}" ]
		then
			source "${rc_file}"
		fi
	done
	unset rc_file
fi

if [ -d ${XDG_CONFIG_HOME}/zsh/initialization_files ]
then
	for rc_file in ${XDG_CONFIG_HOME}/zsh/initialization_files/*
	do
		if [ -f "${rc_file}" ]
		then
			source "${rc_file}"
		fi
	done
	unset rc_file
fi
