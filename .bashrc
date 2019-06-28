#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lh'
alias morty="/Strong/proj/.data/Morty/.config/morty.py"

# COLOR FUNCTIONS
grn="\e[32m"
yel="\e[33m"
nrm="\e[39m"
red="\e[91m"

# PS1 OPTIONS
OLD_PS1='[\u@\h \W]\$'

HEAD_PS1='\[\e[90m\]\u[\[\e[91m\]\h\[\e[90m\]] \W:\[\e[39m\] '
NODE_PS1='\[\e[90m\]\u[\[\e[32m\]\h\[\e[90m\]] \W:\[\e[39m\] '
SCREEN_HEAD_PS1='\[\e[33m\]SCREEN[\[\e[91m\]\h\[\e[33m\]] \W:\[\e[39m\] '
SCREEN_NODE_PS1='\[\e[33m\]SCREEN[\[\e[32m\]\h\[\e[33m\]] \W:\[\e[39m\] '


# SET PS1 BASED ON HOSTNAME: compbio vs node
if [[ ${HOSTNAME} == 'compbio' && ${STY} == '' ]]; then PS1=$HEAD_PS1;
elif [[ ${HOSTNAME} == 'compbio' && ${STY} != '' ]]; then PS1=$SCREEN_HEAD_PS1;
elif [[ ${HOSTNAME} != 'compbio' && ${STY} == '' ]]; then PS1=$NODE_PS1;
elif [[ ${HOSTNAME} != 'compbio' && ${STY} != '' ]]; then PS1=$SCREEN_NODE_PS1; fi;

# add ~/bin to path
export PATH="$HOME/local/bin:$HOME/bin:/opt/openlava/bin:$PATH"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
