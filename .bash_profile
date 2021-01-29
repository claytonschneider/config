EDITOR=vim

alias prof="subl ~/.bashrc"
alias r="source ~/.bash_profile && source ~/.bashrc"
alias c="clear"
alias ls="ls -GFh"
alias mv="mv -i"
alias nr="npm run $0"
alias more="git add . && git commit -m \"more\" && git push"
alias searchprocess="ps ax | grep $1"
alias makegif="ffmpeg -i $1 -s 1440x900 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=7 > out.gif"
alias prune_npm="rm -rf node_modules; rm package-lock.json ; npm i;"
alias clear_clipboard="echo -n '' | pbcopy"
alias watch="npm run unit-test:watch"
alias resolve_conflicts_theirs="grep -lr '<<<<<<<' . | xargs git checkout --theirs"
alias resolve_conflicts_ours="grep -lr '<<<<<<<' . | xargs git checkout --ours"

mkcd () {
  mkdir $1
  cd $1
}

kill_port() {
  lsof -ti :"$1" | xargs kill
}


# Takes first argument as string to find and 2nd as string to replace
findandreplace() {
  git grep -l "$1" | xargs sed -i "" -e "s/$1/$2/g"
}

# Git Shortcuts
alias gclean="git clean -f -d"
alias gpl="git pull"
alias gp="git push"
alias gs="git status"
alias gd="git diff"
alias gc="git checkout"
alias gcm="git checkout master"
alias gmm="git pull origin master && git merge origin master"
alias gi="git commit --no-verify"
alias ga="git add ."
alias gap="git add -p"
alias gitlog="git log -1 -p"
alias gg="git grep $1"
alias undocommit="git reset HEAD~"
alias fix_git_ref="git gc --prune=now"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
