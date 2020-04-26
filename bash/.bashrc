# ------------------------- General Settings ------------------------
if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export LSCOLORS="$LSCOLORS:ow=1;34:tw=1;34:"

# Java settings
#
# Installation: https://docs.datastax.com/en/jdk-install/doc/jdk-install/installOpenJdkDeb.html
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin

# Set default blocksize for ls, df, du
export BLOCKSIZE=1k

# Add color to commonly used commands
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Alias commonly used commands
alias ll='ls -FGlAhp --color=auto'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ls='ls -GFh'

# NVM settings
#
# Installation: https://github.com/nvm-sh/nvm#installing-and-updating
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


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
