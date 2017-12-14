export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
source ~/.gitprompt
source ~/.bashrc

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
alias tr='cd ~/Projects/truck_manager/'
alias toqa='ruby ~/Projects/push_to_qa.rb'

alias nx="sudo nginx"
alias nxs="sudo nginx -s stop"
alias vwt="vim ~/Projects/Development/weather/"
alias cdw="cd ~/Projects/Development/weather/"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
alias fountain='cd ~/Projects/Development/fountain'
