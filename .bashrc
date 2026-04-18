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


# User specific aliases and functions
. ~/scripts/db.env
alias vi=vim
alias la='ls -latr'
#alias config='/usr/bin/git --git-dir=/home/oracle/.cfg/ --work-tree=/home/oracle'

alias config='/usr/bin/git --git-dir=$HOME/.dotfile/ --work-tree=$HOME'

# 2 line
export PS1='\n┌─ \t \[$([ "$EUID" -eq 0 ] && echo "\e[1;31m" || echo "\e[1;32m")\]\u@\h\[\e[0m\](\w) ->\n└─ \[$([ "$EUID" -eq 0 ] && echo "\e[1;31m#\e[0m" || echo "\e[1;32m$\e[0m")\] '

# 1 line
#export PS1='\[$([ "$EUID" -eq 0 ] && echo "\e[1;31m#\e[0m" || echo "\e[1;32m$\e[0m")\] \t \[$([ "$EUID" -eq 0 ] && echo "\e[1;31m" || echo "\e[1;32m")\]\u-v8@\h\[\e[0m\](\w) -> '

#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(fzf --bash)"
