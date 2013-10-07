# Git
alias 'gg'='git gui &'
alias 'gka'='gitk --all &'
alias 'gl'='git log'
alias 'gst'='git status'
alias 'gsl'='git stash list'
alias 'gsk'='git stash --keep-index'
alias 'gsa'='git stash apply'
alias 'gcom'='git checkout master'
alias 'gpull'='git pull origin master'
alias 'gpush'='git push origin master'
function gcob() { git checkout $1; }
function gconb() { git checkout -b $1; }
function gss() { git stash save $1; }
function gcm() { git commit -m $1; }

# Search for files (case-insensitive)
function fname() { find . -iname "*$@*"; }

# Ask for confirmation before performing these actions
alias 'cp'='cp -i'
alias 'mv'='mv -i'
alias 'rm'='rm -i'

# List all files in human-readable, long format
alias 'll'='ls -alh'

# Make vim the default system editor
export EDITOR='vim';

# Show colors for grep match results
export GREP_OPTIONS='--color=auto'

. $HOME/.git-completion.sh
. $HOME/.git-prompt.sh

# git completion options
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM="auto"

# show branch name in the prompt
PS1='\W $(__git_ps1 "[%s]")\$ '

# Loads RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Adds npm binaries to path
export PATH=/usr/local/share/npm/bin:$PATH

# Put /usr/local/bin first in path
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Remove duplicates from path
export PATH=`awk -F: '{for(i=1;i<=NF;i++){if(!($i in a)){a[$i];printf s$i;s=":"}}}'<<<$PATH`;

export PATH=/Users/yeojw10/bin/Sencha/Cmd/3.1.2.342:$PATH

export SENCHA_CMD_3_0_0="/Users/yeojw10/bin/Sencha/Cmd/3.1.2.342"

export PATH=${PATH}:/Users/yeojw10/Code/adt-bundle/sdk/platform-tools:/Users/yeojw10/Code/adt-bundle/sdk/tools

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM
