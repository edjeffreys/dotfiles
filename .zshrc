# Mac seems to lose this for some reason...
export PATH=~/.scripts:/opt/homebrew/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export EDITOR=nvim
export GOOGLE_APPLICATION_CREDENTIALS=/Users/ed.jeffreys/.config/gcloud/application_default_credentials.json
export ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=YES
export JAVA_HOME=/opt/homebrew/opt/openjdk@21/libexec/openjdk.jdk/Contents/Home
export CLOUDSK_PYTHON=$(which python3)

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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $ZSH/oh-my-zsh.sh
plugins=(zsh-autosuggestions zsh-syntax-highlighting vi-mode)

eval "$(zoxide init zsh)"
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh.json)"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/ed.jeffreys/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/ed.jeffreys/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/ed.jeffreys/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/ed.jeffreys/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

eval 
TWILIO_AC_ZSH_SETUP_PATH=/Users/ed.jeffreys/.twilio-cli/autocomplete/zsh_setup && test -f $TWILIO_AC_ZSH_SETUP_PATH && source $TWILIO_AC_ZSH_SETUP_PATH; # twilio autocomplete setup
