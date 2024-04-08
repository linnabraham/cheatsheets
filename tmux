# config file
~/.tmux.conf

# Change prefix from 'Ctrl+B' to 'Ctrl+A'
set-option -g prefix C-a
bind-key C-a send-prefix

# source file to enable changes in config
tmux source-file ~/.tmux.conf

# To start tmux:
tmux

# To detach from tmux:
# release ctrl-b before pressing d
Ctrl-b d

# To restore tmux session:
tmux attach

# To detach an already attached session (great if you are moving devices with different screen resolutions):
tmux attach -d

# To display session:
tmux ls

# To rename session:
Ctrl-b $

# To switch session:
Ctrl-b s

# To start a shared session:
tmux -S /tmp/your_shared_session
chmod 777 /tmp/your_shared_session

# To help screen (Q to quit):
Ctrl-b ?

# To scroll in window:
Ctrl-b PageUp/PageDown

# To reload configuation file
Ctrl-b : source-file /path/to/file

# To create a window:
Ctrl-b c

# To go next window:
Ctrl-b n

# To destroy a window:
Ctrl-b x

# To switch between windows:
Ctrl-b [0-9]
Ctrl-b Arrows

# To split windows horizontally:
Ctrl-b %

# To split windows vertically:
Ctrl-b "

# To swap windows:
Ctrl-b :swap-window -s [0-9] -t [0-9]

# switch between panes
Ctrl-b +(→, ←, ↑, ↓)

# start new named session
tmux new -s my_session

# attach to a named session
tmux a -t nameofsession

# list windows
tmux lsw

# activate copy mode in tmux
Ctrl-b  "["

# 
:join-pane -h -s [session]:[window_number]

# https://stackoverflow.com/questions/9592969/how-to-join-two-tmux-windows-into-one-as-panes
# move the 2nd window as a pane to the 1st window. The opposite command is break-pane
join-pane -s 2 -t 1 

# show some preview of all sessions etc.
<C-b> + w

# to quit use q
