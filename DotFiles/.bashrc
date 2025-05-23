##################
#     BASHRC     #
##################

cd ~
alias reload='source ~/.bashrc; echo "BASHRC SOURCED."'

# Configuration Files:
alias bashrc='vim ~/.bashrc'
alias dir_colors='vim ~/.dircolors'
alias gitconfig='vim ~/.gitconfig'
alias inputrc='vim ~/.inputrc'
alias profile='vim ~/.profile'
alias vimrc='vim ~/.vimrc'

# Bash Completion:
if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Aliases:
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -lah --color=auto'
alias diff='diff --color'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias apt-get='sudo apt-get'
alias update='sudo apt-get update'
alias open='xdg-open'
alias df='df -h'
#alias rm='rm -i'
#alias mv='mv -i'
alias weather='ansiweather -l denver -u imperial -F'
alias python='python3'

# Colors:
force_color_prompt=yes
eval "$(dircolors ~/.dircolors)"

# History:
HISTCONTROL=ignoredups
HISTSIZE=5000
HISTFILESIZE=5000
HISTTIMEFORMAT='%m/%d/%Y  %T  "
shopt -s histappend
LESSHISTSIZE=0

# Less:
export LESS_TERMCAP_mb=$'\e[1;34m'    # mb = Start Blink
export LESS_TERMCAP_md=$'\e[1;34m'    # mb = Start Bold
export LESS_TERMCAP_so=$'\e[1;33m'    # mb = Start Standout - Help Line
export LESS_TERMCAP_us=$'\e[1;4;31m'  # mb = Start Underline
export LESS_TERMCAP_me=$'\e[0m'       # mb = Turn Off Bold, Blink and Underline
export LESS_TERMCAP_se=$'\e[0m'       # mb = Stop Standout
export LESS_TERMCAP_ue=$'\e[0m'       # mb = Stop Underline
export GRODD_NO_SGR=1
export MANPAGER='less -a -M +Gg'

# Git:
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
  }

# Docker:
alias docker='sudo docker'

# Kubernetes:
ns() {
  kubectl config set-context --current --namespace=$1 > /dev/null 2>&1
  echo "Default namespace changed to $1."
}

# Prompt:
export PS1="[\u@\h \[\e[01;36m\]\W \e[01;91m\]\$(git_branch)\[\e[00m\]]$  "
