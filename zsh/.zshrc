# Path to your oh-my-zsh installation.
# Installation:
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
export ZSH="/home/$USER/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
#
# Install Powerlevel10k
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/
# powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
#
# Install the following custom plugins:
# 1. https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
# 2. https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Set default blocksize for ls, df, du
export BLOCKSIZE=1k

# Alias commonly used commands
alias ll='ls -FGlAhp --color=auto'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ls='ls -GFh'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
