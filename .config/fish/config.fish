alias top=htop
alias vim=nvim
alias cat="bat --theme=TwoDark"
alias dns="dig +short"
alias l="ls -l"

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"

command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


starship init fish | source
