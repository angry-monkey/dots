export LC_COLLATE=C

export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.configuration"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

PATH="${HOME}/.local/bin:${PATH}"

export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

if [ -d ${XDG_CONFIG_HOME}/zsh/environment ]
then
	for rc_file in ${XDG_CONFIG_HOME}/zsh/environment/*
	do
		if [ -f "${rc_file}" ]
		then
			source "${rc_file}"
		fi
	done
	unset rc_file
fi
