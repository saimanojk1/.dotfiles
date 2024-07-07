export PATH="$PATH:$HOME/.tmuxifier/bin"
eval "$(tmuxifier init -)"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
# Auto completion
export fpath=(~/.zsh $fpath)
source <(kubectl completion zsh)
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias k='kubectl'
alias kc='kubectl config'

function nd() {
  cd "$@"
  local toGoDir=$(fd -t d ".*" | fzf)
  if [ -n "$toGoDir" ]; then
    cd "$toGoDir"
  fi
  nvim
}


function cf() {
  cd "$@"
  local toGoDir=$(fd -t d ".*" | fzf)
  if [ -n "$toGoDir" ]; then
    cd "$toGoDir"
  fi
  clear
}
# Custom completion for cf command

_cf_completion() {
    _directories
}

compdef _cf_completion cf
compdef _cf_completion nd



# Set up the prompt
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{cyan}%n%F{reset_color%}@%F{green}%m%f %F{yellow}%~%f %F{red}${vcs_info_msg_0_}%f$ '



autoload -U +X bashcompinit && bashcompinit

cd ~/Projects
tmuxifier s startup

