# make a terminal sticky that was started as a notepad
for_window [instance=notepad] sticky enable

# use the second value of the window class attribute shown in xprop output
# for configs involving window classes

# open a new workspace without specifying the number
i3-msg workspace $(($(i3-msg -t get_workspaces | tr , '\n' | grep '"num":' | cut -d : -f 2 | sort -rn | head -1) + 1))
