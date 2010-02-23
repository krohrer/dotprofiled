# System-wide .bashrc file for interactive bash(1) shells.

# Please, X, PIMP MY PROMPT!
if [ "$TERM" != 'dumb' ] && [ -n "$BASH" ] && [ -n "$PS1" ]
then
    SC=$(tput sc)
    RC=$(tput rc)

    function cmd_prompt()
    {
	D=$(printf "%$((${COLUMNS}-2))s  " "$(date +'[%G-%m-%d %T]')")
	if [ `whoami` == 'root' ]
	then
	    export PS1="\n\e[1;37; 41m${SC}${D}${RC}  [\u@\H $(arch)\e[37m] : \e[93m\W\e[0m\n]] "
	elif [ -n "$SSH_CONNECTION" ]
	then
	    export PS1="\n\e[1;30;107m${SC}${D}${RC}  [\u@\H $(arch)\e[30m] : \e[31m\W\e[0m\n]] "
	else
	    export PS1="\n\e[1;37; 44m${SC}${D}${RC}  [\u@\H $(arch)\e[37m] : \e[92m\W\e[0m\n]] "
	fi
    }
    export PROMPT_COMMAND="cmd_prompt"

# Fallback
elif [ -n "$PS1" ]
then
	PS1='\h:\w \u\$ '
fi

# Make bash check it's window size after a process completes
shopt -s checkwinsize
