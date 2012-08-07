# Git
alias 'gg'='git gui &'
alias 'gka'='gitk --all &'
alias 'gl'='git log'
alias 'gs'='git status'
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

# Ask for confirmation before performing these actions
alias 'cp'='cp -i'
alias 'mv'='mv -i'
alias 'rm'='rm -i'

# Make vim the default system editor
export EDITOR='vim';

# Show colors for terminal
## For dark background
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

## For light background
# export CLICOLOR=1
# export LSCOLORS=ExFxBxDxCxegedabagacad

# Use git command completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
. `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

# Show branch name in prompt
function display_branch {
  local dir="$PWD"
  local vcs
  local nick
  while [[ "$dir" != "/" ]]; do
    for vcs in git hg svn bzr; do
      if [[ -d "$dir/.$vcs" ]] && hash "$vcs" &>/dev/null; then
        case "$vcs" in
          git) __git_ps1 "${1:-[%s]}"; return;;
          hg) nick=$(hg branch 2>/dev/null);;
          svn) nick=$(svn info 2>/dev/null\
                | grep -e '^Repository Root:'\
                | sed -e 's#.*/##');;
          bzr)
            local conf="${dir}/.bzr/branch/branch.conf" # normal branch
            [[ -f "$conf" ]] && nick=$(grep -E '^nickname =' "$conf" | cut -d' ' -f 3)
            conf="${dir}/.bzr/branch/location" # colo/lightweight branch
            [[ -z "$nick" ]] && [[ -f "$conf" ]] && nick="$(basename "$(< $conf)")"
            [[ -z "$nick" ]] && nick="$(basename "$(readlink -f "$dir")")";;
        esac
        [[ -n "$nick" ]] && printf "${1:-[%s]}" "$nick"
        return 0
      fi
    done
    dir="$(dirname "$dir")"
  done
}
PS1="\w \$(display_branch)\$ "

# Put /usr/local/bin first in path
export PATH=/usr/local/bin:$PATH

# Remove duplicates from path
export PATH=`awk -F: '{for(i=1;i<=NF;i++){if(!($i in a)){a[$i];printf s$i;s=":"}}}'<<<$PATH`;
