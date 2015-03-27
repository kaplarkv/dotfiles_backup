zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' max-errors 3
zstyle :compinstall filename '/home/kaplar/.zshrc'
zstyle ':completion:*' menu select

autoload -Uz compinit promptinit
compinit
promptinit

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_IGNORE_DUPS
setopt autocd

bindkey -v

prompt adam2

source /usr/share/doc/pkgfile/command-not-found.zsh

export BROWSER="firefox"
export EDITOR="vim"

[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"    history-beginning-search-backward
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}"  history-beginning-search-forward

source ~/.zsh/aliases
