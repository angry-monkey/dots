autoload -Uz compinit
compinit

bindkey -v

if [ -d ${XDG_CONFIG_HOME}/zsh/alias ]
then
	for rc_file in ${XDG_CONFIG_HOME}/zsh/alias/*
	do
		if [ -f "${rc_file}" ]
		then
			source "${rc_file}"
		fi
	done
	unset rc_file
fi

if [ -d ${XDG_CONFIG_HOME}/zsh/configuration ]
then
	for rc_file in ${XDG_CONFIG_HOME}/zsh/configuration/*
	do
		if [ -f "${rc_file}" ]
		then
			source "${rc_file}"
		fi
	done
	unset rc_file
fi
