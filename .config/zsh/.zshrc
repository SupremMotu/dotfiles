# powerline-go
function powerline_precmd() { PS1="$(/usr/local/bin/powerline-go -shell zsh)"
}
function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}
if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

# autocomplete spellcheck
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' original true
autoload -Uz compinit
compinit
# history
HISTFILE=~/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=100000

# aliases
alias ls='ls --color=auto'

# proton-clang
export PATH=${PATH}:/usr/local/bin/proton-clang/bin

# less
export LESS='-RiF --mouse --wheel-lines=3'

# pfetch
export PF_INFO="ascii title os kernel uptime wm editor memory"

# syntax highlighting
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh &> /dev/null
