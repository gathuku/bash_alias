# Git status alias
alias g='git status -sb'

# Git add and remove aliases
alias ga='git add'
alias gr='git rm'

# Git branch alias
alias gb='git branch -v'
alias gba='git for-each-ref --sort=committerdate refs/heads/ --format="%(authordate:short) %(color:red)%(objectname:short) %(color:yellow)%(refname:short)%(color:reset) (%(color:green)%(committerdate:relative)%(color:reset))"'
alias gbd='git for-each-ref --sort=-committerdate refs/heads/ --format="%(authordate:short) %(color:red)%(objectname:short) %(color:yellow)%(refname:short)%(color:reset) (%(color:green)%(committerdate:relative)%(color:reset))"'

# Git commit aliases
alias gc='git commit'
alias gca='git commit --amend'
alias gcm='git commit -m'

# Git checkout aliases
alias gcod='git checkout develop'
alias gcom='git checkout master'
alias gcos='git checkout staging'

# Git fetch aliases
alias gf='git fetch'
alias gfa='git fetch --all'

# Git pull alias
alias gp='git pull --rebase'

# Git pull from origin aliases
alias gprod='git pull --rebase origin develop'
alias gprom='git pull --rebase origin master'
alias gpros='git pull --rebase origin staging'

# Git pull from upstream aliases
alias gprud='git pull --rebase upstream develop'
alias gprum='git pull --rebase upstream master'
alias gprus='git pull --rebase upstream staging'

# Git push to origin aliases
alias gpod='git push origin develop'
alias gpom='git push origin master'
alias gpos='git push origin staging'

# Git push to upstream aliases
alias gpud='git push upstream develop'
alias gpum='git push upstream master'
alias gpus='git push upstream staging'

# Git push with the --force-with-lease option
alias gpofl='git push --force-with-lease origin'
alias gpufl='git push --force-with-lease upstream'

# Git rebase aliases
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias grd='git rebase develop'
alias gri='git rebase -i'
alias grm='git rebase master'
alias grs='git rebase staging'

# Git stash aliases
alias gsl='git stash list'
alias gsp='git stash pop'
alias gss='git stash save'

# Git diff and log aliases
alias gd='git diff --color-words'
alias gl='git log --oneline --decorate'
alias gslog="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"


# Ruby
#on
#Rails

# Ruby on Rails generators
alias rrg='rails generate'
alias rrga='rails g assets'
alias rrgc='rails g controller'
alias rrgd='rails g decorator'
alias rrgg='rails g generator'
alias rrgh='rails g helper'
alias rrgma='rails g mailer'
alias rrgmi='rails g migration'
alias rrgmo='rails g model'
alias rrgt='rails g task'

# Ruby on Rails commands
alias rra='rails application'
alias rrc='rails console'
alias rrd='rails destroy'
alias rrn='rails new'
alias rrpr='rails profiler'
alias rrpl='rails plugin'
alias rrs='rails server'

# Ruby on Rails database tasks
alias rrdc='rake db:create'
alias rrdd='rake db:drop'
alias rrdm='rake db:migrate'
alias rrdr='rake db:reset'
alias rrds='rake db:seed'
alias rrdsu='rake db:setup'


#######################
# NPM ALIASES
######################
# Npm alias
alias np='npm'

# Npm install alias
alias npi='npm install'
alias npis='npm install --save'
alias npig='npm install -g'

# Npm update
alias npu='npm update'
alias npug='npm update -g'

# Npm search
alias nps='npm search'

########################
## DOCKER
########################
alias dl="docker ps -l -q"
alias dps="docker ps"
alias di="docker images"
alias dkd="docker run -d -P"
alias dki="docker run -i -t -P"
alias dex="docker exec -i -t"
