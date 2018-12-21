# ------------------------- General Settings ------------------------

# change prompt to use powerline-shell
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# export Java home
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin

# set default blocksize for ls, df, du
export BLOCKSIZE=1k

# add color to commonly used commands
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# alias commonly used commands
alias ll='ls -FGlAhp --color=auto'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ls='ls -GFh'

