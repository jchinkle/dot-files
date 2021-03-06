# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export PATH="$HOME/.rbenv/bin:$PATH"

alias gitk='gitk 2>/dev/null'

alias dbm="bin/rake db:migrate"
alias dbr="bin/rake db:rollback"
alias dbtp="bin/rake db:test:prepare"
alias bi="bundle install"
alias be="bundle exec"
alias spec="bin/rspec"
alias rspec="bin/rspec"
alias rot="bin/rake deployment:run_ordered_tasks"
alias jspec="RAILS_ENV=test bin/rake spec:javascript"
#alias stop_cassandra="launchctl stop homebrew.mxcl.cassandra"
#alias start_cassandra="launchctl start homebrew.mxcl.cassandra"
alias clob="bin/rake assets:clobber"
alias ctags="`brew --prefix`/bin/ctags"
alias lucropg="psql -h 0.0.0.0 -p 5432 -U postgres -d lucro_dev"
#alias ctags="`brew --prefix`/bin/ctags"
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

set -o vi

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

bindkey -v

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#

export RAILS_SECRET_TOKEN="3b7cd727ee24e8444053437c36cc66c3"


#
PATH=$PATH:/usr/local/bin
PATH=$PATH:/Users/jeremy_hinkle/terraform
PATH=$PATH:/Users/jeremy_hinkle/packer

PATH=/Users/jeremy_hinkle/.rbenv/shims:$PATH
eval "$(rbenv init -)"

stty icrnl
source /Users/jeremy_hinkle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
