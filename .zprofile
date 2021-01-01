export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache

export EDITOR=nvim
export TERMINAL=urxvt
export BROWSER=chromium

export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export GNUPGHOME=$XDG_DATA_HOME/gnupg
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx &> /dev/null
fi
