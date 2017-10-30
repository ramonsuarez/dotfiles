ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="geoffgarside"

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"

# Add miniconda to path
export PATH=~/miniconda3/bin:$PATH


# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1"

# Add environment variable for Linux from scratch
# export LFS=/media/ramon/lfscratch
# export BUNDLER_EDITOR="atom $@ >/dev/null 2>&1"
# export BUNDLER_EDITOR="atom $@ >/dev/null 2>&1"
