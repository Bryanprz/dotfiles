export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
source ~/.gitprompt
source ~/.bashrc

alias gst="git status"
alias ga="git add"
alias gc="git commit -m"
alias gco="git checkout"
alias gp="git push"
alias gpom="git push origin master"
alias gphm="git push heroku master"
alias gpem="git push origin master; git push heroku master"
alias gpl="git pull"
alias gx="gitx"
alias gb="git branch"
alias sb="open /Applications/Sublime\ Text\ 2.app"
alias glol="git log --oneline --graph --all --decorate"
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
alias ctags='/usr/local/bin/ctags'

# MDLIVE aliases
alias md="cd ~/Projects/mdlive/legacy/"
alias st="cd ~/Projects/mdlive/stern/"
alias fr="cd ~/Projects/mdlive/fore/"
alias pp="cd ~/Projects/mdlive/port/"
alias nx="sudo nginx"
alias nxs="sudo nginx -s stop"
alias vst="vim ~/Projects/mdlive/stern/"
alias vmd="vim ~/Projects/mdlive/legacy/"
alias ap="cd ~/Projects/mdlive/api-testing/"
