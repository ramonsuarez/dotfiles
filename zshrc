ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="geoffgarside"

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"

# Add miniconda to path
export PATH=~/miniconda3/bin:$PATH

# Store your own aliases in the ~/.aliases file and load them
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Plugins
plugins=(
        zsh-autosuggestions
        ,)
source $HOME/.zshenv
