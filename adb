# list devices
adb devices

# connect wirelessly over adb
# enable wireless adb in android developer settings
# activate the adb over network button in notification bar to get the device ip address
adb connect 192.168.29.122:5555

# make sure the device is unlocked and accept the request for usb debugging
# then retry adb devices -l

# use adb push to send data to phone
adb push lineage-17.1-20200921-UNOFFICIAL-harpia.zip /sdcard

# pull data using adb
adb pull /sdcard/path/to/file .

# list installed packages
adb shell pm list packages

# interactive shell access
adb shell

# explore files within shell
ls
ls /sdcard
