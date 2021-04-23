export EDITOR=vim
eval "$(starship init bash)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


# BELOW DOESNT WORK IN FISH BUT KEEP IT FOR FUTURE EDITORS
# Add cd directories to pushd directory stack
# View directories on the stack with dirs
# Go back to previous directories in stack with bd
# https://mhoffman.github.io/2015/05/21/how-to-navigate-directories-with-the-shell.html

#function cd() {
  #if [ "$#" = "0" ]
  #then
  #pushd ${HOME} > /dev/null
  #elif [ -f "${1}" ]
  #then
    #${EDITOR} ${1}
  #else
  #pushd "$1" > /dev/null
  #fi
#}

#function bd(){
  #if [ "$#" = "0" ]
  #then
    #popd > /dev/null
  #else
    #for i in $(seq ${1})
    #do
      #popd > /dev/null
    #done
  #fi
#}
