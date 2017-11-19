ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="geoffgarside"

<<<<<<< HEAD
# Add ruby version on prompt (float right)
# if [ -x "$(command -v rbenv)" ]; then RPS1='[$(ruby_prompt_info)]$EPS1'; fi

# Useful plugins for Rails development with Sublime Text
# plugins=(gitfast brew rbenv last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search)

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
# export PATH="./bin:${PATH}:/usr/local/sbin"

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
<<<<<<< HEAD
# export BUNDLER_EDITOR="atom $@ >/dev/null 2>&1"
# export BUNDLER_EDITOR="atom $@ >/dev/null 2>&1"
=======
>>>>>>> 70d467babf3000411508d62e7a6b34dea159d01e
