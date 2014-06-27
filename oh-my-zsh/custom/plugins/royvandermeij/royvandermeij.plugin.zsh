# a few aliases I like
alias ga='git add --all'
alias glog='git log --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias gl='glog --graph --all'
alias gs='git status -sb'
alias go='git checkout'
alias gm='git merge --no-ff'
alias gmf='git merge --ff-only'
alias gp='gp'
alias gca='git commit -a'

export EDITOR="/usr/bin/mvim"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
alias ll='ls -lrthG'

# add plugin's bin directory to path
export PATH="$PATH:$HOME/.bin"

# Show contents of directory after cd-ing into it
chpwd() {
  ls -lrthG
}

reload!() {
  echo 'reloading rails';
  touch tmp/restart.txt;
}
