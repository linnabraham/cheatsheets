# config file
~/.tmux.conf

# Change prefix from 'Ctrl+B' to 'Ctrl+A'
set-option -g prefix C-a
bind-key C-a send-prefix

# reload after changing config file
# you might also have to create a new session
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
tmux attach -t <tmux_session_name> -d

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
# or to see list of keybindings
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

# To split windows vertically:
Ctrl-b %

# To split windows horizontally:
Ctrl-b "

# To cycle through available layouts
Ctrl-b space

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

# https://stackoverflow.com/questions/9592969/how-to-join-two-tmux-windows-into-one-as-panes
# move the 2nd window as a pane to the 1st window in horizontal way. The opposite command is break-pane
join-pane -s 2 -t 1 -h
:join-pane -h -s [session]:[window_number]
:break-pane -d -t 0

# show some preview of all sessions etc.
<C-b> + w

# to quit use q
#
# to switch windows ctrl-b + shift + ]

# copy a rectangular patch in tmux
Enter copy mode
Ctrl+Space
Alt + w to paste

# directly enter into a tmux session from ssh
ssh remote -t "tmux a -t sessname"

# source the bashrc
set-option default-command "/bin/bash"

# see tmux version
-V

# attach to last detached session
tmux a

# copy with mouse enabled
click shift while selecting

# paste from buffer
prefix + ]

# to detach from inner most session when there are nested tmux sessions
Use prefix twice before using d

# kill a session
tmux kill-session -t <session-name>

# remove stale tmux sockets
rm -rf /tmp/tmux-$(id -u)/

# list existing key binds
tmux list-keys 

# rebind a key
unbind-key -T prefix C-c
bind-key -T prefix C-d send-keys -X cancel

# break a pane into its own window
ctrl-b !
or
ctrl-b : break-pane

# see if you have vi or emacs style keys
tmux show-options -g status-keys

# show all windos across all sessions
tmux list-windows -a

# rename panel
ctrl-b ,
