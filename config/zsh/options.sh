#!/bin/zsh

unsetopt inc_append_history
unsetopt share_history

bindkey '^P' history-search-backward
bindkey '^N' history-search-forward
