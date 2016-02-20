EDITOR=vim

alias prof="subl ~/.bash_profile"
alias r="source ~/.bash_profile"
alias hr="cd /Users/clayschneider/documents/hack_reactor"
alias desktop="cd /Users/clayschneider/desktop"
alias assessments="cd /Users/clayschneider/documents/hack_reactor/assessments"
alias repos="cd /Users/clayschneider/documents/hack_reactor/repos"
alias toyproblems="cd /Users/clayschneider/documents/hack_reactor/toyproblems"
alias tuts="cd /Users/clayschneider/documents/code/tutorials"
alias ls="ls -GFh"
alias mv="mv -i"


mkcd () {
  mkdir $1
  cd $1
}

dkme () {
  eval "$(docker-machine env $1)"
}

dkrm () {
  docker rm -f $(docker ps -a -q)
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export WORKON_HOME=~/.enviroments
source /usr/local/bin/virtualenvwrapper.sh
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
