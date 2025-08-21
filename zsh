# man page for options
man zshoptions

# keep program running in the background
dolphin &!

# To bind ALT/ENTER/TAB to shortcut key?
#^ is represented for CTRL
bindkey ‘ then press ctrl+v and the keystroke you want to bind. Then close the quote and add the widget you want to bind to ’ some-widget

# to solve command `complete` not found
if [ -n "$ZSH_VERSION" ]; then
      autoload -U bashcompinit
        bashcompinit
fi

# run a function before each command
autoload -Uz add-zsh-hook
a_function () {
	}
add-zsh-hook precmd a_function

# dont use configs
zsh -o NO_RCS

# characters that need to be escaped in zsh and if not using single quotes
!

# show all history instead of last 16
history 1

# bracketed paste is enabled by default in zsh to disable
unset zle_bracketed_paste

# ignore Ctrl-D which otherwise would exit the shell
setopt IGNORE_EOF

# if you want zsh to correct your commands
ENABLE_CORRECTION="true"
setopt CORRECT
