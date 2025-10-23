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


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
