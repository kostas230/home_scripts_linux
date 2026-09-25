set -o emacs

HISTFILE="$HOME/.ksh_history"
HISTSIZE=5000
export HISTFILE HISTSIZE

alias Telegram='env QT_QPA_PLATFORMTHEME=xdgdesktopportal /usr/bin/Telegram'
alias zapzap='env QT_QPA_PLATFORMTHEME=xdgdesktopportal /usr/bin/zapzap'
alias upgrade-aur='sh $HOME/.config/homescripts/upgrade-aur.sh'

function keybd_trap {
	case ${.sh.edchar} in 
		$'\f') .sh.edchar=$'\e\f' ;;
		$'\027') .sh.edchar=$'\e\010' ;;
		$'\e[3~')
			if [[ -n ${.sh.edtext} ]]; then
				.sh.edchar=$'\004'
			else
				.sh.edchar=''
			fi
			;;
	esac
}

trap keybd_trap KEYBD

PS1='$USER@${HOSTNAME%%.*}:${PWD/#${HOME}/\~} $ '
