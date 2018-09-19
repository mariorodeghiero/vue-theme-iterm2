
# Current working directory
prompt_dir() {
  echo "|%{$terminfo[bold]$fg[cyan]%}%~%{$reset_color%} 💻 $(git_prompt_info)%{$reset_color%}"
  echo "|"
}

# Symbol
symbol(){
  if [[ $UID -eq 0 ]]; then
      echo '#'
  else
      echo '|--⫸ '
  fi
}


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[gray]%}--⑆ "
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_DIRTY=" 🔧" # working
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} 🆗" # ok

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} added"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} changed"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} deleted"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} renamed"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} unmerged"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[blue]%} ahead"

ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[blue]%} untracked"

## Main prompt
build_prompt() {
  RETVAL=$?
  prompt_dir
  symbol
}


PROMPT='%{%f%b%k%}$(build_prompt) %{$reset_color%}'
RPROMPT='%{$fg[cyan]%}🔂%{$reset_color%}$(git_prompt_status)%{$reset_color%}'
