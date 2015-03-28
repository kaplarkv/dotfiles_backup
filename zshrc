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

source /usr/share/doc/pkgfile/command-not-found.zsh

export BROWSER="firefox"
export EDITOR="vim"

[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"    history-beginning-search-backward
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}"  history-beginning-search-forward

setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr '●' 
zstyle ':vcs_info:*' unstagedstr '●' 
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' actionformats '%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats \
  '%F{7}< %F{5}%b %F{2}%c%F{1}%u %F{7}>%f'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
zstyle ':vcs_info:*' enable git 
+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
  [[ $(git ls-files --other --directory --exclude-standard | sed q | wc -l | tr -d ' ') == 1 ]] ; then
  hook_com[unstaged]+='%F{1}??%f'
fi
}


precmd () { vcs_info }
PROMPT='%F{3}[ %3~ ] %f% '
RPROMPT='${vcs_info_msg_0_}'

source ~/.zsh/aliases
