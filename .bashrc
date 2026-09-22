# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export TERM=xterm-256color
#export HIGHLIGHT_STYLE=solarized-dark
export PYGMENTS_STYLE=solarized-dark
export RIPGREP_CONFIG_PATH=~/.config/ripgrep/config

##################################################################################
function rg() {
    ranger --cmd="set preview_files true" --choosedir="$HOME/.rangerdir" "$@"
    local LASTDIR=$(cat "$HOME/.rangerdir" 2>/dev/null)
    if [ -n "$LASTDIR" ] && [ "$LASTDIR" != "$PWD" ]; then
        cd "$LASTDIR"
    fi
}
##################################################################################

# User specific aliases and functions
#. ~/scripts/db.env
alias vi=vim
alias la='ls -latr'

# Reset
RESET="\[\e[0m\]"

# Regular colors
BLACK="\[\e[0;30m\]"
RED="\[\e[0;31m\]"
GREEN="\[\e[0;32m\]"
YELLOW="\[\e[0;33m\]"
BLUE="\[\e[0;34m\]"
MAGENTA="\[\e[0;35m\]"
CYAN="\[\e[0;36m\]"
WHITE="\[\e[0;37m\]"
ORANGE="\[\e[38;5;208m\]"
BOLD_ORANGE="\[\e[1;38;5;208m\]"
ORANGE_RGB="\[\e[38;2;255;165;0m\]"


# Bold colors
BOLD_RED="\[\e[1;31m\]"
BOLD_GREEN="\[\e[1;32m\]"
BOLD_YELLOW="\[\e[1;33m\]"
BOLD_BLUE="\[\e[1;34m\]"

if [ "$EUID" -eq 0 ]; then
  USER_COLOR="$BOLD_RED"
  PROMPT_SYMBOL="${BOLD_RED}#${RESET}"
else
  #USER_COLOR="$BOLD_GREEN"
  USER_COLOR="$BOLD_ORANGE"

  PROMPT_SYMBOL="${BOLD_GREEN}\$${RESET}"
fi


export PS1="\n┌─ \t ${USER_COLOR}\u@\h${RESET}(\w) ->\n└─ ${PROMPT_SYMBOL} "
#export PS1="${PROMPT_SYMBOL} \t ${USER_COLOR}\u@\h${RESET}(\w) ${BOLD_GREEN}->${RESET} "

eval "$(fzf --bash)"
