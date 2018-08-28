#!/bin/zsh

## GIT
alias s="git s"
alias cdg="cd-gitroot"

## Color ls
alias ls="colorls"
alias l="ls -lA"
unalias la ll lsa

## tree
alias t="exa --tree"

## thefuck
eval $(thefuck --alias)