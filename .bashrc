# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.2-3

# ~/.bashrc: executed by bash(1) for interactive shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Shell Options
#
# See man bash for more options...
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
# shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
# shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1
#
# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Aliases
#
# Some people use a different file for aliases
# if [ -f "${HOME}/.bash_aliases" ]; then
#   source "${HOME}/.bash_aliases"
# fi
#
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
#
# Default to human readable figures
# alias df='df -h'
# alias du='du -h'
#
# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
# alias grep='grep --color'                     # show differences in colour
# alias egrep='egrep --color=auto'              # show differences in colour
# alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
# alias ls='ls -hF --color=tty'                 # classify files in colour
# alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
# alias ll='ls -l'                              # long list
# alias la='ls -A'                              # all but . and ..
# alias l='ls -CF'                              #

# Umask
#
# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077

# Functions
#
# Some people use a different file for functions
# if [ -f "${HOME}/.bash_functions" ]; then
#   source "${HOME}/.bash_functions"
# fi
#
# Some example functions:
#
# a) function settitle
# settitle () 
# { 
#   echo -ne "\e]2;$@\a\e]1;$@\a"; 
# }
# 
# b) function cd_func
# This function defines a 'cd' replacement function capable of keeping, 
# displaying and accessing history of visited directories, up to 10 entries.
# To use it, uncomment it, source this file and try 'cd --'.
# acd_func 1.0.5, 10-nov-2004
# Petar Marinov, http:/geocities.com/h2428, this is public domain
# cd_func ()
# {
#   local x2 the_new_dir adir index
#   local -i cnt
# 
#   if [[ $1 ==  "--" ]]; then
#     dirs -v
#     return 0
#   fi
# 
#   the_new_dir=$1
#   [[ -z $1 ]] && the_new_dir=$HOME
# 
#   if [[ ${the_new_dir:0:1} == '-' ]]; then
#     #
#     # Extract dir N from dirs
#     index=${the_new_dir:1}
#     [[ -z $index ]] && index=1
#     adir=$(dirs +$index)
#     [[ -z $adir ]] && return 1
#     the_new_dir=$adir
#   fi
# 
#   #
#   # '~' has to be substituted by ${HOME}
#   [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"
# 
#   #
#   # Now change to the new dir and add to the top of the stack
#   pushd "${the_new_dir}" > /dev/null
#   [[ $? -ne 0 ]] && return 1
#   the_new_dir=$(pwd)
# 
#   #
#   # Trim down everything beyond 11th entry
#   popd -n +11 2>/dev/null 1>/dev/null
# 
#   #
#   # Remove any other occurence of this dir, skipping the top of the stack
#   for ((cnt=1; cnt <= 10; cnt++)); do
#     x2=$(dirs +${cnt} 2>/dev/null)
#     [[ $? -ne 0 ]] && return 0
#     [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
#     if [[ "${x2}" == "${the_new_dir}" ]]; then
#       popd -n +$cnt 2>/dev/null 1>/dev/null
#       cnt=cnt-1
#     fi
#   done
# 
#   return 0
# }
# 
# alias cd=cd_func

source ~/.git-prompt.sh

rm -f /GitHub
ln -s /cygdrive/c/GitHub /GitHub

rm -f /BaiduYun
ln -s /cygdrive/c/BaiduYun /BaiduYun

export PS1='\n\[\e[32m\][\h] \[\e[33m\]\w$(__git_ps1 " (%s)")\[\e[0m\]\n\$  '

export GOROOT=C:/Green/Go/1.5.1
export GOPATH=C:/Code/hel_git/go
export GOBIN=C:/Code/hel_git/go/bin
export GOTOOLDIR=C:/Green/Go/1.5.1/tool/windows_amd64
export GRAPHVIZ_DOT=C:/Cygwin/bin/dot.exe

export ANDROID_HOME=/cygdrive/c/Green/Android/android-sdk

export GEM_HOME=/cygdrive/c/RubyGems

export PATH=$PATH:$(cygpath $GOROOT)/bin
export PATH=$PATH:$(cygpath $GOPATH)/bin
export PATH=$PATH:$(cygpath $GOBIN)
export PATH=$PATH:/cygdrive/c/Workspace/go/bin
export PATH=$PATH:/cygdrive/c/SBT/bin
export PATH=$PATH:/cygdrive/c/Code/hel_git/go/bin
export PATH=$PATH:$GEM_HOME/bin

export HTML_TIDY=$HOME/.tidyrc

export suse1='i062289@10.58.133.59'
export suse2='i062289@10.58.134.99'

export DISPLAY=:0.0

# For IPython edit function
export EDITOR='emacsclient-w32.exe '


alias bfg='java -jar $(cygpath -w "/cygdrive/d/Tools/bfg-1.12.8.jar")'
alias cd='cd '
alias cyg='/cygdrive/c/Cygwin'
alias dirs='dirs -v'
alias la='ls -a'
alias ll='ls -la'alias smpsrc=/cygdrive/c/Code/hel_git/smp/dist/main.build
alias e='emacsclient-w32.exe -n '
alias ew='emacs-w32.exe &'
alias ff='find ./ -type f -name'
alias ghd=/GitHub/dragon-riverlei
alias hcmsrc=/cygdrive/c/Code/hel_git/hcmui
alias jc='jupyter qtconsole --style perldoc'
alias mvn='mvn.bat'
alias om='/GitHub/dragon-riverlei/omnisharp_server/OmniSharp/bin/Debug/OmniSharp.exe'
alias org='/BaiduYun/org'
alias p1='pushd +1'
alias p2='pushd +2'
alias p3='pushd +3'
alias p4='pushd +4'
alias p5='pushd +5'
alias p6='pushd +6'
alias p7='pushd +7'
alias p8='pushd +8'
alias p9='pushd +9'
alias smp=/cygdrive/c/Code/hel_git/smp/dist/main.build
alias taskjuggler="tj3"
alias tshark='/cygdrive/c/Program\ Files/Wireshark/tshark.exe'
alias xx='startxwin &'

function run_emacs(){
    emacs_process=$(ps aux | grep "emacs-w32")
    if [ "$emacs_process" == "" ]; then
        ew
    fi
}

run_emacs

pushd ~/.emacs.d
pushd /cygdrive/c/Code/hel_git/smp/dist/main.build
pushd /cygdrive/c/GitSAP/I062289/ultralite_xamarin
pushd /cygdrive/c/Installed/sqlany17/SDK/Include
pushd /cygdrive/c/GitHub/dragon-riverlei/osgi_in_action
pushd /cygdrive/c/Code/hel_view_uepmain_dev_new/calm/dub/uep/server/ds

function setProxy(){
    local proxy="$1"
    export http_proxy=http://proxy.$proxy.sap.corp:8080
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    echo "Proxy set to $http_proxy."
}
function unsetProxy(){
    export http_proxy=
    export https_proxy=
    export ftp_proxy=
    export rsync_proxy=
    export no_proxy=
    echo "Proxy set to empty."
}

function syncuporg(){
    cd /BaiduYun/org
    clean=$(git status | grep -c "nothing to commit")
    if [ "$clean" != "1" ]; then
        echo "Workspace not clean. Abort sync."
        return
    fi
    cd /BaiduYun
    rm -rf org.yun
    mkdir org.yun
    cd /BaiduYun/org.yun
    echo "Dowloading from Baidu Yun..."
    bypy.py downfile data1.tar.gz
    mv data1.tar.gz data1.tar.gz.gpg
    gpg -d data1.tar.gz.gpg | tar zxvf -
    echo "Checking local revision with remote revision..."
    cd /BaiduYun/org.yun/org
    count_yun=$(git log  --pretty=format:"%cI" | grep -c "+08:00")
    cd /BaiduYun/org
    count=$(git log  --pretty=format:"%cI" | grep -c "+08:00")
    cd /BaiduYun
    if [ $count_yun -gt $count ]; then
        echo "Workspace is NOT up-to-date. Please sync down first."
        rm -rf /BaiduYun/org.yun
        return
    elif [ $count_yun -eq $count ]; then
        echo "Already up-to-date."
        rm -rf /BaiduYun/org.yun
        return
    fi
    echo "Preparing uploading..."
    tar zcf data1.tar.gz org
    gpg -e -s data1.tar.gz
    rm data1.tar.gz
    mv data1.tar.gz.gpg data1.tar.gz
    echo "Uploading..."
    bypy.py upload data1.tar.gz
    rm data1.tar.gz
    rm -rf org.yun
    echo "Done."
}

function syncdownorg(){
    cd /BaiduYun/org
    clean=$(git status | grep -c "nothing to commit")
    if [ "$clean" != "1" ]; then
        echo "Workspace not clean. Abort sync."
        return
    fi
    cd /BaiduYun
    rm -rf org.yun
    mkdir org.yun
    cd /BaiduYun/org.yun
    echo "Dowloading from Baidu Yun..."
    bypy.py downfile data1.tar.gz
    mv data1.tar.gz data1.tar.gz.gpg
    gpg -d data1.tar.gz.gpg | tar zxvf -
    echo "Checking local revision with remote revision..."
    cd /BaiduYun/org.yun/org
    count_yun=$(git log  --pretty=format:"%cI" | grep -c "+08:00")
    cd /BaiduYun/org
    count=$(git log  --pretty=format:"%cI" | grep -c "+08:00")
    cd /BaiduYun
    if [  $count_yun -le $count ]; then
        echo "Already up-to-date."
        rm -rf /BaiduYun/org.yun
        return
    fi
    cd /BaiduYun
    rm -rf /BaiduYun/org.copy
    mv /BaiduYun/org /BaiduYun/org.copy
    mv /BaiduYun/org.yun/org /BaiduYun/org
    rm -rf /BaiduYun/org.yun
    echo "Done."
}

PATH="/home/I062289/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/I062289/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/I062289/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/I062289/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/I062289/perl5"; export PERL_MM_OPT;
