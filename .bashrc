#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ALIASES:
alias ls='ls --color=auto'
alias ll='ls -lh'

# PS1 command prompt options
ps1_basic='[\u@\h \W]\$'
ps1_head='\[\e[90m\]\u[\[\e[91m\]\h\[\e[90m\]] \W:\[\e[39m\] '
ps1_head_screen='\[\e[33m\]SCREEN[\[\e[91m\]\h\[\e[33m\]] \W:\[\e[39m\] '
ps1_node='\[\e[90m\]\u[\[\e[32m\]\h\[\e[90m\]] \W:\[\e[39m\] '
ps1_node_screen='\[\e[33m\]SCREEN[\[\e[32m\]\h\[\e[33m\]] \W:\[\e[39m\] '
# Set PS1 based on node and screen
headnode='compbio'
if [[ ${HOSTNAME} == ${headnode} && ${STY} == '' ]]; then PS1=$ps1_head;
elif [[ ${HOSTNAME} == ${headnode} && ${STY} != '' ]]; then PS1=$ps1_head_screen;
elif [[ ${HOSTNAME} != ${headnode} && ${STY} == '' ]]; then PS1=$ps1_node;
elif [[ ${HOSTNAME} != ${headnode} && ${STY} != '' ]]; then PS1=$ps1_node_screen; fi;

# add ~/bin to path
export PATH="$HOME/local/bin:$HOME/bin:/opt/openlava/bin:$PATH"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
