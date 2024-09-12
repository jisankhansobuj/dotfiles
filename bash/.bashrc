#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set to superior editing mode
set -o vi


alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias vim=nvim
alias inv='vim $(fzf -m --preview="cat {}")'


PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

export PATH=$PATH:/usr/local/go/bin

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/jisan/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
