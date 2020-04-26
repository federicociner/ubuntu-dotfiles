# Path to your oh-my-zsh installation.
# Installation:
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
export ZSH="/home/federicociner/.oh-my-zsh"

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

# Anaconda3 2018.12
#
# Installation: https://docs.anaconda.com/anaconda/install/linux/
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/federicociner/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/federicociner/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/federicociner/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/federicociner/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# Java settings
#
# Installation: https://docs.datastax.com/en/jdk-install/doc/jdk-install/installOpenJdkDeb.html
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin

# NVM settings
#
# Installation: https://github.com/nvm-sh/nvm#installing-and-updating
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
