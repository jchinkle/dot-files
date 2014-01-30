alias gitk='gitk 2>/dev/null'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function ruby_version() {
  rvm current
}

function git_branch() {
  branch=$(git branch 2>/dev/null | cut -d' ' -f2)
  if [ "$?" == "0" ]; then echo $branch; fi
}

function rails_version() {
  rails=$(rails --version | grep '^Rails [0-9]')
  if [ "$?" == "0" ]; then
    echo $rails
  else
    echo "No rails"
  fi
}

export PS1="\[\e[0;31m\]\W \[\e[0;33m\](git_branch)\[\e[0m\]\$ "
export PS2="\$ "
