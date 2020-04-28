# Source .zshrc
[[ ~/.zshrc ]] && source ~/.zshrc

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

