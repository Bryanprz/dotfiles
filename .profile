export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
source ~/.gitprompt

alias gst="git status"
alias ga="git add"
alias gc="git commit -m"
alias gco="git checkout"
alias gp="git push"
alias gpom="git push origin master"
alias gphm="git push heroku master && heroku run rake db:migrate && heroku restart"
alias gpem="git push origin master; git push heroku master"
alias gpl="git pull"
alias gx="gitx"
alias st="open -a SourceTree ./"
alias gb="git branch"
alias sb="open /Applications/Sublime\ Text.app"
alias glol="git log --oneline --graph --all --decorate"
alias gll="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gd="git diff"
alias gdc="git diff --cached"
alias gpo="git push origin"
alias gl="git log"
alias gm="git merge"
alias gmm="git merge master"
alias gs="git stash"
alias gsp="git stash pop"
alias gcom="git checkout master"
alias v="vim"
alias mu="mysql -uroot"
alias ct="ctags -R --exclude=.git --exclude=log *"
alias rc="rails c"
alias rs="rails s"
alias grh="git reset HEAD"
alias ctags='`brew --prefix`/bin/ctags'
alias b='bundle'
alias be='bundle exec'
alias g='guard'
alias f='fg'
alias ht='cd ~/Projects/HiringThing/'
alias mysql='cd /usr/local/mysql/bin; ./mysql -uroot -p'
alias test='docker-compose run test bundle exec rake test'
alias d='docker'
alias dc='docker-compose'
alias ds='docker-sync'
alias c='docker-compose run web bundle exec rails c'
alias htlog='docker attach hiringthing_web_1'
alias list_containers='docker container ls -a'
alias prepare_test_container='dc run test bundle exec rake db:create db:structure:load'

alias nx="sudo nginx"
alias nxs="sudo nginx -s stop"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/Users/bryan/Library/Python/2.7/bin" # Add PIP to path for AWS CLI

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
