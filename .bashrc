#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export GOOGLE_API_KEY='AIzaSyAfU0jEhqQIoruuAV140LMksQPvAJdHEns'
export GEMINI_API_KEY="AIzaSyAfU0jEhqQIoruuAV140LMksQPvAJdHEns"
. "$HOME/.cargo/env"
