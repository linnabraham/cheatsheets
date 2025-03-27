# show most recent file in directory
ls -Art | tail -n 1

# show uuid
ls -l /dev/disk/by-uuid

# By default, the time in ls command is mtime (modified time).

# sort by file size in largest first order
ls -S

# list files in reverse order of modification
ls -ltr

# environment variable that stores options
LS_OPTIONS

# show access time instead of modification time
--time=atime

# list only directories
ls -d */
