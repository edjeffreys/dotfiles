# Mac seems to lose this for some reason...
export PATH=/opt/homebrew/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

plugins=(zsh-autosuggestions zsh-syntax-highlighting)

alias top=htop
alias vim=nvim
alias cat="bat --theme=TwoDark"
alias dns="dig +short"
alias ssh_req_demo="sshca request --environment 'demo' --reason 'Testing...' --valid-before '167h'"
alias assumeclusterowner="~/.scripts/assumeclusterowner"
alias gitdave='git rebase --onto stable origin/master'
alias pip=pip3
alias cat=bat

export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export EDITOR=nvim
export GOOGLE_APPLICATION_CREDENTIALS=/Users/ed.jeffreys/.config/gcloud/application_default_credentials.json

# Starling config
if [ -e /Users/ed.jeffreys/.starling/etc/profile ]; then
  . /Users/ed.jeffreys/.starling/etc/profile
else
  echo "Could not find '/Users/ed.jeffreys/.starling/etc/profile'"
fi

gittidy() {
  git switch master
  git branch | grep -v \* | xargs git branch -D
}

eval "$(starship init zsh)"

