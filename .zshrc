# Mac seems to lose this for some reason...
export PATH=~/.scripts:/opt/homebrew/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export EDITOR=nvim
export GOOGLE_APPLICATION_CREDENTIALS=/Users/ed.jeffreys/.config/gcloud/application_default_credentials.json
export ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=YES

alias top=htop
alias vim=nvim
alias cat="bat --theme=TwoDark"
alias dns="dig +short"
alias ssh_req_demo="sshca request --environment 'demo' --reason 'Testing...' --valid-before '167h'"
alias gitdave='git rebase --onto stable origin/master'
alias pip=pip3

# Starling config
if [ -e /Users/ed.jeffreys/.starling/etc/profile ]; then
  . /Users/ed.jeffreys/.starling/etc/profile
fi

gittidy() {
  git switch master
  git branch | grep -v \* | xargs git branch -D
}

assumerole() {
  mfa=
  vared -p "MFA code: " -c mfa
  eval $(toolbox_python assumerole $1 $mfa)
  eval $( echo export ASSUME_ROLE=$1 )
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $ZSH/oh-my-zsh.sh
plugins=(zsh-autosuggestions zsh-syntax-highlighting)

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

