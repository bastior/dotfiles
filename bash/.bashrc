SHELL=bash
EDITOR=nvim
TERM=xterm-256color

source ~/.aliases
source ~/.prompt

#bash autocompletion
source ~/git-completion.bash
export SIMPLE_PROMPT=0

#shopt

shopt -s autocd
shopt -s cdspell
shopt -s cdable_vars
shopt -s checkhash
shopt -s checkwinsize
shopt -s dirspell
shopt -s dotglob
shopt -s extglob
shopt -s no_empty_cmd_completion
