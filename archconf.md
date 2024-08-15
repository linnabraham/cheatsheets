# DONE

+ [x] copy synaptics driver configuration from default
+ [x] enable sound after polybar install
+ [x] install alsautils with pacman for controlling volume
     + disable auto mute option through alsamixer
+ [x] pull down configuration files from github repo
h ttps://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html
+ [x] start redshift at startup
+ [x] fix touchpad double tap issue by editing xorg config file from synaptics driver
+  setup gpg directory first so that loading keys in yay is error free  
https://wiki.archlinux.org/index.php/libinput  
https://xtrymind.wordpress.com/2017/03/11/enable-tap-to-click-on-openbox/
+ [x] To give a user full root privileges add to the sudoers file
     jack ALL=(ALL) ALL
+ [x] giving permissions in fstab file
     umask=022 this will set permissions so that the owner has read, write, execute. Group and Others will have read and execute.
     umask=000 will give permission to all.
+ [x] use dropbox-cli and mv into drobpox home folder and use exclude * to remove all folders from syncing
+ [x] autostart dropboxd by editing xinitrc
+ [x] solve issue of fonts changing after some install by creating fontconfig/fonts.conf
+ [ ] how to take calibre configuration with you?
+ [x] transfer gpg keys from other machine
+ [x] trust primary gpg key for pass to work
+ [x] suppress warning from gpg by changing .gnupg to 700
+ [x] configure pass with git
     + [x] put passwd store in github
+ [x] make ssh work with gpg keys
     + [x] add keygrip of subkey to .gnupg/sshcontrol file to avoid manually adding gpg key to ssh
+ [x] copy dicts for sdcv from porteus rootcopy
+ [x] sudo systemctl enable bluetooth.service
+ [x] sudo systemctl enable sshd.service  
     sudo systemctl start sshd
+ [x] copy /usr/local/texlive from porteus
+ [x] clone over my scripts dir from github by remote add and pull from .local/bin
+ [x] install cheatsheets prog
+ [x] turn off brave desktop notification ads
+ [x] add functions for power discharge and disk usage in dwmblocks
+ [x] edit the dmenu_run script to make it run with password prompt, put the helper script dpass in .local/bin  
make a backup of org dmenu_run
+ [x] startx automatically at login by writing to .bash_profile
+ [x] fix blueman-manager not able to connect by installing the pulseaudio-bluetooth package
+ [x] improve youtube plugin for brave to control default yt playback speed
+ [x] recompile dwm with vert gap decreased to 10 from 30px - apparently that is the option for changing the horizontal gap
+ [x] disable touchpad while typing
     + [x] add syndaemon to xinitrc with 0.5s idle time
+ [x] enable rc.local in systemd https://wiki.archlinux.org/index.php/User:Herodotus/Rc-Local-Systemd
+ [x] setup gcalcli with .gcalclirc config file and oauth2 ids
+ [x] enable sysreq key comb in arch
+ [x] setup completion in vim with deoplete and added deoplete-jedi plugin and jedi pip package for python autocompletion
+ [x] auto login to graphical env on user login
+ [x] backup arch using rsync
+ [x] make grub verbose by editing /etc/default/grub to remove quiet and running grub-config
+ [x] Hide GRUB unless the Shift key is held down using https://wiki.archlinux.org/index.php/GRUB/Tips_and_tricks#Changing_the_default_menu_entry
+ [x] Set TIMEOUT=-1 to show GRUB MENU
+ [x] automount hdd paritions as well as usbs at boot
     + [x] write a custom script
     + [x] enable rc-local service
     + [x] run command to run script through rc-local
+ [x] cannot set up default applications to work with xdg-open
     + [x] install lsdesktopf from yay
     + [x] To get a quick overview of how many and which .desktop files can be associated with a certain MIME type, use lsdesktopf --gen-mimeapps
     + [x] use this to define default applications in .config/mimeapps.list
     + [x] install the following application from aur selectdefaultapplication-git - which basically edits the .config/mimeapps.list to
     add entries one per line in the default application section
+ [x] set up autologin to dwm without entering username using https://wiki.archlinux.org/index.php/Getty#With_systemd
+ [x] copy over lukes setbg script install xwallpaper
+ [x] change wallpaper and edit xinitrc to run setbg
+ [x] fix problems with conky going out of box, transparent
+ [x] enable sxhkd service in systemd; start it using xinitrc; configure in .config
     + systemctl enable --user sxhkd.service
     + [x] symlink lukes prompt (dmenu) script for prompts
+ [x] run rank mirrors from pacman-contrib to find the fastest mirrors
+ [x] install virtualenvwrapper inside tf env to suppress err msg on source bashrc with workon
+ [x] change conky to limit no of run times and update interval on battery
+ [x] add opiton to xinitrc file for other DEs in order to quickly change the default
+ [x] disable skype startup in autostart
+ [x] set up cmatrix screensaver
     + [x] install xscreensaver and use Xmatrix theme
     + [x] modify xinitrc to run the server
     + [x] make a scritp to use dmenu to lock
+ [x]  make notify-send work on arch
     + [x] install the dunst package and modify xinitrc to run it as a server
     + [x] disable dunst service to make dunst segfaults or coredump msgs to disappear from boot
+ [x] systemctl enable tor.service to make tor services work
+  [x] fix brightness control using acpid https://wiki.archlinux.org/index.php/acpid#Tips_and_tricks
+  [x] fix lightdm greeter not working issue
     + create a .desktop file in /usr/share/xsessions which executes required wm or de
     + [x] doesnot work by default with dwm but can work with graphical wm like xfce etc
     + [x] use lightdm to login to dwm
+  [x] brave cannot be set as default browser
+ [x] setup calcurse to work with nextcloud calendar
     + [ ] create a dir at ~/.local/share/calcurse/caldav/
     + [x] calcurse-caldev
     + [x] obtain the private link for calendar through nextcloud calendar web interface , provide nextcloud login credentials as credentails for caldav sync
+ [x] make mouse scroll available by default updating lukes st to default and make install
+ [x] fix clipboard clearing issue on killing windows by installing clipmenu for dmenu and editing xinitrc binding key for clipmenu cmd
+ [x] enable jupyter notebook preview as html text in ranger
     + [x] use jupyter nbconvert to write to a temporary file and dump the html using w3m etc
+ [x] open notebook in pager view
     + [x] convert ipynb to html using nbconvert and pipe into w3m to dump to stdout
+ [x] add option to open jupyter notebooks through surf inside ranger
+ [x] add option to scroll images when opening image with sxiv in ranger
     + [x] use a wrapper script for sxiv and edit the ranger rifle file
+ [x] make use of lukes scripts for handling external commands in sxiv
+ [x] fix issue with vim-live-latex preview swallowing vim
     + [x] editing the shell scripts inside vim plugged folder
+ [x] install droidcam for turning phone to webcam
     + install linux-headers
     + install v4loopback-dkms package
     + libappindicator-gtk3 from yay
+ [x] install kdeconnect on arch
     + [x] exec /usr/lib/kdeconnectd to start the kdeconnect daemon
     + [ ] difficult to make
+  [x] setup virtual machine using qemu
+  [x] install virt-manager for using windows VM
      sudo usermod -a -G libvirt $(whoami)
+  [x] fix gui problems and themes in arch
     themes are inbuilt in arch in /usr/share/themes/ its controlled by the env
     variables which can be defined in .bash_profile
+ [x] try to transfer python virtual env
     + [x] install py37 with miniconda
     + [x] install tensorflow inside miniconda
     + [x] make virtual env using venv with miniconda python and enable site packages to get tensorflow
+ [x] mount drives using pcmanfm etc or use udev to automount usb
     + [x] caja can be used for automounting
     + start this in the background: /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
     + or lxpolkit provided by lxsession package with gvfs and gvfs-mtp installed.
+ [x] setting up key bindings
+ [x] set up my remind system
+ [x] if single file use loop option play script in linux
+ [x] enable syncthing user service
	systemctl enable --user syncthing.service
+ syncthing has problems writing to sdcard except for the data folder for syncthing
https://github.com/syncthing/syncthing-android/wiki/Frequently-Asked-Questions
+ create symlink bookmarks.db file to where buku stores its file
+ add xcompgr to xinitrc for transparency
+ use commands.py in ranger to get additional feats like fzf select
+ edit /etc/ImageMagick-7/policy.xml for pdf to image conversion to work
+ to set up texlive on arch follow the instruction to edit tlmgr.pl script
export TEXMFHOME=/path/dir/
tlmgr --usermode --init-tree
modify sublime settings:
	"texpath"	: "$PATH:/usr/share/texmf-dist/tex",
download pdftk executable binary directly and rename and move to path
+ clone weechat-matrix repo pip3 install -r requirements.txt ; make install
+ script for downloading yt video for particular time range
+ dmenu-notes script for quickly creating a note in a predefined locations ~/Dropbox/jots/ and bind it to key
+ use pubs program for bibliography management
+ use starship for the fancy prompt:
    + tracks time taken for executing commands
    + configured using .config/starship.toml using info from https://starship.rs/config also saved into .config/starship.toml.def
+ firefox-esr configurations:
    + change default font to that of brave's
    + uncheck using system colors in color settings
    + disable ask to save passwords in settings
+ check speed of hdd using hdparm -t /dev/sda:
 ```/dev/sda:
 Timing buffered disk reads: 324 MB in  3.01 seconds = 107.78 MB/sec
```
+ install lshw using pacman
+ install pandoc-bin from aur to do away with haskell dependencies
+ fix issue with rofi-browser not recoridng sound during screen recording by replacing command with ffmpeg command
+ install xkcd font required for xkcd R package folllowing offical r-project documentation. with slight changes
+ Configure openbox:
    + install tint2 for panel
    + pnmixer for volume applet
    + add programs to .config/openbox/autostart file
    + menu-maker for right click applicaiton menu
    + hide desktop nme from taskbar
    + edit rc file to add battery info
    + change applet setting in workrave
    + add shortcut to taskbar - ff, pidgin, telegram.thunar
    + add mouse scrollup and scrolldown cmds: using xbacklight
    + add executor plugin to show ram usage - cmd from lukesmith
    + install rofi-power-menu for power off functionality; make into a desktop file and add into the panel
+ configure dijo for tracking habits:
    + changed true_chr value to X for better visibility in dijo/config.toml file
+ install khal and vsyncdir for managing calendars:
    + first configure vsyncdir to sync your existing online calendars with a directory in your filesystem
    + add those to khal by running `khal configure`
    + edit khals config file if needed
    + create a seperate calendar called data that can be used for noting things on the calendar
+ currently using the acpid service to handle power events like power button press on DE without power management:
    + configure the /etc/acpi/handler.sh file to enable events on power button press
    + `echo -n mem >/sys/power/state` to the power button action to enable sleep on power button press
+ To use the rupee symbol on keyboard:
    + add locale en_IN and generate locale with locale-gen
    + edit /usr/X11/xorg.conf.d/00-keyboard.conf to add additional layout "in" with variant "eng"
    + add option lv3:ralt_switch, rupeesign:4
+ using xmenu:
    + install xdg-xmenu and run it `xdg-xmenu > $HOME/.local/share/desktop-menu` to save to file
    + give this file as input to xmenu `xmenu < $HOME/.local/share/desktop-menu | sh &`
+ connect to remote machine that doesnt have public ip using vnc:
    + use portmap.io service to create an openvpn config file and download it to your system
    + create a mapping rule that maps a port on the local system to the portmaps remote server
    + install openvpn and create the vpn tunnel to portmap.io:
	+ sudo pacman -S openvpn
	+ openvpn --config linn.first.ovpn
    + On the client:
	+ vncviewer portmaphostid:portnumber
    + install a vnc server like tigervnc on the remote machine and configure it
    + install a firewall like ufw and allow incoming traffic on tcp/5901 port
    + run the regular vncserver or x0vncserver if you want to connect to exiting session
    + use a vncviewer like that of tigervnc on the local machine or AVNC on your android phone
    + running the vncserver over ssh tunnel for security
    + configuration:
	+ .vnc/config
	+ session=xfce
	+ /etc/tigervnc/vncserver.users
+ to solve the problem with lightdm-gtk-greeter background being replaced immediately. also enable the
  user background =false option
+ unlock keyring issues with gnome-keyring can occur if the autlogin user feature is enabled in system login
+ deactivate bluetooth at startup:
    + disable auto-enable in /etc/bluetooth/main.conf to prevent tlp or systemd rfkill states preservations
    + use tlp option after masking systemd-rfkill.service and .socket
    + remove blueman autostart entries
+ install cuda on arch linux with linux kernel:
    + install cuda cudnn nvidia packages
    + install linux-headers package
    + install nvidia-dkms package
    + [mkinitcpio](mkinitcpio) -P
    + reboot
    + `modprobe nvidia`
    + `nvidia -smi`
    + used up 16gb on a fresh system
+ alternative faster way to get cuda working on arch in aws:
    + pacman -Syu git base-devel
    + install paru-bin
    + paru -Syu
    + pacman -S nvidia nvidia-dkms
    + reboot
    + paru -S miniconda3
    + conda create -n p37 python==3.7 tensorflow-gpu==1.15
    + conda activate p37
    + import tensorflow as tf; tf.test.is_gpu_available
+ music configuration:
    + systemctl enable --user mpd.socket instead of mpd.service
    + configure ncmpcpp
    + config .config/mpd.conf
    + install mpc
    + bind mpc toggle to key using sxhkd
    + install clerk-git from aur for using fzf style searching
    + to stop mpd services use systemctl --user stop mpd[.socket]
+ set up offline mail with neomutt and mutt-wizard:
    + download mutt-wizard from lukesmiths github
    + sudo make install
    + install isync, msmtp, neomutt, cronie, pass
    + when using mw -a <email> to add account an entry is made in .password-store file with ur gpg id
    + the default muttrc file is in usr/local/share/mutt-wizard
    + edit line in the mailsync program to omit the notmuch line
    + config file for mbsync is .mbsyncrc and notmuch is .notmuch
    + mw -t 10 will add a cron rule to users crontab
    + this however is not capable of working with pass so use a systemd timer file
    + downgrade opensssl version to 1.1.1.d for not giving socket time out errors when using imap
    	+ however it worked on endeavour os VM from fresh install
+ troubleshoot openbox:
    + sometimes you will have to run openbox --reconfigure to avoid unnecessary font changes etc.
+ configure fortune:
    + put a custom collection of quotes inside my nextcloud directory which is symlinked to /usr/share/fortune/
    + run strfile nameoffile to generate a .dat file which also needs to be symlinked to /usr/share/fortune/
+ configure dns over https in linux:
    + install the dnscrypt-proxy package
    + use the nameinator tool  to test the performance of different dns resolvers:
	+ sample data is there in the nameinator github page
	+ clone the repo and cd inside
	+ run it with nameinator
    + follow the wiki page on dnscrypt-proxy
    + check no processes are running on :53 port
    + stop and disable systemd-resolved if needed
    + chattr -i /etc/resolv.conf
    + edit it and lock it using +i flag.
    + edit the /etc/dnscrypt-proxy/dnscrypt-proxy.toml file with the server names of cloudflare
    + enable the dnscrypt-proxy.service
    + check for dns leaks
    + in firefox settings u may now need to set the dns over https option in network settings.
	+ another option is to use the cloudflared package which install a stub resolver for cloudflare
+ using vpns:
    + use protonvpn for everything apart from torrents
    + install protonvpn meta package from aur that provides the protonvpn-cli
    + configure the openvpn configs
    + connect using ```protonvpn-cli connect```
    + to use windscsribe create an account with windscribe
    + configure the credentials
    + start the systemd service
    + use ```windscribe connect```
+ to add a custom search engine on firefox, use the 'add custom search engine' addon for ff
+ in order to use a different dns resolver. add the desired resolver to the /etc/resolv.conf file
+ enable hardware
+ To enable hardware acceleration during video playback
    + install the intel-media-driver package
    + use the vainfo command from the libva-utils package to get info on the VA-API
    + use the intel_gpu_top command from the intel-gpu-tools to see if video memory is being used.
    + to test ; run ```mpv --hwdec=auto video_filename```
+ installing android apps on pc using anbox:
    + install and switch to the zen kernel on arch
    + install the anbox-git package from aur
    + `sudo mkdir -p /dev/binderfs `
      `sudo mount -t binder none /dev/binderfs`
    + `sudo systemctl start anbox-container-manager.service`
    + `systemctl --user start anbox-session-manager`
    + `anbox launch --package=org.anbox.appmgr --component=org.anbox.appmgr.AppViewActivity`
    + for internet connectivity run the anbox-bridge script
+ To verify your OpenGL installation you can use mesa-utils glxinfo and you should get output like this :
```
$ glxinfo | grep OpenG
```
+ Solve bibliography management:
    + Use pubs program on the command line for managing the bibliography
    + Pubs stores each ref as a separate bib file along with a yaml file that contains metadata including the path of the pdf file
    + All the publications can reside in a single folder unlike Zotero
    + Use Zotero with the zotfile plugin and pass the pubs directory as the linked directory. Disable renaming the pdf file in settings.
+ Fixing multiple issues with youtube-dl:
    + replace with yt-dlp a fork of ytdl with more features and updates
    + can be used as a backend to mpv for better bufferring free experience `mpv --script-opts=ytdl_hook-ytdl_path=yt-dlp  "link"`
    + can be used when ytdl fails on certain external sites that maybe geo restricted but at the same time can be accessed on a browser through dnscrypt proxy or other methods.
+ Installing ytmdl:
    + Currently ytmdl installed through paru doesnt work, the one installed through pip works
    + So you need to install ytmdl in a separate python environment and export the path in zshrc
    + Then yt-dlp needs to be installed separately in the python environment
+ Configure mpris for mpd through the mpDris2 aur package:
    + for controlling media playback through bluetooth create a systemd user service inside .config/systemd/user/ and enable it
    + it runs the mpris-proxy binary.
    + use the mpDris2 autostart entry which runs the mpDris2 command
    + install playerctl package
    + bind media keys through the playerctl command
    + mpv-mpris
    + If you don't want this plugin to autoload, delete the symlink at /etc/mpv/scripts/mpris.so.
+ optimize boot time:
    + sudo systemctl mask - networkmanager-wait-online
    + systemctl mask systemd-networkd-wait-online.service
    + sudo systemctl enable upower
    + sudo systemctl disable ntpd
    + disable ldconfig.service
    + To find what is starting the accounts-daemon service doing a grep:
	+ /usr/share/dbus-1/system-services/org.freedesktop.Accounts.service:Exec=/usr/lib/accounts-daemon
	+ /usr/share/dbus-1/system-services/org.freedesktop.Accounts.service:SystemdService=accounts-daemon.service
	+ /usr/lib/systemd/system/accounts-daemon.service:ExecStart=/usr/lib/accounts-daemon
	+ Required for showing custom avatar in lightdm
+ enable hw acceleration in firefox (librewolf):
    + https://ubuntuhandbook.org/index.php/2021/08/enable-hardware-video-acceleration-va-api-for-firefox-in-ubuntu-20-04-18-04-higher/
    + check vainfo to ensure vaapi works
    + toggle certain variables in about:config
    + restart or relogin
+ setup christmas decoration on laptop:
    + xsnow-bin from aur can be used as xscreensaver by editing the
      .xscreensaver file and adding a line like xsnow -root
    + start the xscreensaver daemon using - nohup xscreensaver &
    + replace the ugly locker application with suckless slock
    + use custom script to combine them - locker
+ setup application menu or launcher:
    + install jgmenu
    + initialize using jgmenu_run init commands with a particular theme
    + if needed add jgmenu to startup
    + bind jgmenu_run to hotkey or add .desktop to plank launcher
+ fix paru error to build torbrowser:
    + gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org
+ gitjournal supports links by \[[ \]]
+ When using truecrypt or veracrypt it doesnt work if you arent using the linux mainline kernel.
+ Also use veracrypt doesnt work on truecrypt vaults all the time atleast.
+ Run truecrypt without sudo
+ config file for skippy alt tab switcher can be found at /etc/xdg/skippy-xd.rc
+ Changing kernel on arch linux:
    + install pacman -S linux-lts
    + (optional) check if kernel, ramdisk and fallback are available in ls -lsha /boot
    + remove the standard kernel pacman -R linux
    + update the grub config grub-mkconfig -o /boot/grub/grub.cfg
    + reboot
+ to give mac osx like theme install the following from aur:
    + mojave-gtk-theme - Mojave-dark-solid
    + arc-dark-osx-openbox-theme-git
    + whitesur-icon-theme-git
+ changing keybings on openbox by editing the rc.xml file:
    + change clt+alt+left/right keys for changing workspaces to super+left
+ disabling tlp:
    + Very difficult to disable tlp when having the package installed.
    + the recommended way is to edit the config file at /etc/tlp.conf
    + however tlp uses udev rules /lib/udev/ etc so warnings continue to appear in journalctl
    + had to remove tlp to stop these.
+ tint2conf:
    + st -e sh -c "calcurse"  - for opening calcurse on clicking the clock
    + replaced above with 'st -e sh -c "ikhal 2>/dev/null"'
    + add second tint2 panel using a different config file and `tint2 -c config.file`
+ taskwarrior ecosystem:
    + install taskwarrior on arch linux to get the `task` command
    + additionaly there is the `tasksh` utility which provided a review mechnaism for periodic review of tasks
    + the configuration is enough to enable syncing
    + but you need to find a free syncing service like inthe.am
    + on mobile the best bet seems to be using it on termux
+ Download from instagram or pinterest using gallery-dl:
    +  Some sites like pinterest only require an exported cookie file not username or passwords
    +   gallery-dl --cookies ~/Downloads/cookies-www-pinterest-co-uk.txt  'https://www.pinterest.co.uk/username'
+ claws-mail:
    + install claws-mail, dillo - for html rendering
+ installing tensorflow 1.15 on arch VM on aws:
    + (maybe optional) change to an lts kernel:
	+ sudo pacman -S linux-lts linux-lts-headers
	+ ls -lsha /boot
	+ uname -r
	+ sudo pacman -Rs linux-ec2-lts linux-ec2-lts-headers
	+ sudo grub-mkconfig -o /boot/grub/grub.cfg
	+ sudo reboot
    + install nvidia drivers:
	+ sudo pacman -S nvidia nvidia-dkms
    + install cuda-10:
	+ sudo pacman -S wget
	+ wget 'http://archlinux.arkena.net/archive/packages/c/cuda/cuda-10.0.130-2-x86_64.pkg.tar.xz'
	+ sudo pacman -U cuda-10.0.130-2-x86_64.pkg.tar.x
	+ wget 'http://archlinux.arkena.net/archive/packages/g/gcc7-libs/gcc7-libs-7.3.1%2B20180406-1-x86_64.pkg.tar.xz'
	+ sudo pacman -U gcc7-libs-7.3.1+20180406-1-x86_64.pkg.tar.xz
	+ wget 'https://archive.archlinux.org/packages/c/cudnn/cudnn-7.4.2.24-1-x86_64.pkg.tar.xz'
	+ sudo pacman -U cudnn-7.4.2.24-1-x86_64.pkg.tar.xz
	+ paru -S miniconda3
	+ conda create -n py37 python==3.7
	+ conda install tensorflow-gpu==1.15
	+ import tensorflow as tf
	+ tf.test.is_gpu_available()

+ steps required to launch a GPU VM with cuda and tensorflow:
	+ sudo pacman -Syu nvidia nvidia-dkms git base-devel
	+ git clone https:aur.archlinux.org/paru-bin
	+ cd paru-bin
	+ makepkg -si
	+ paru -S minconda3
	+ conda create -n py37 python==3.7
	+ conda activate py37
	+ conda install tensorflow-gpu==1.15
+ setup vnc:
    + pacman -S tigervnc
    + vim .vnc/config:
	+ Insert `session=xfce` and `alwaysshared` do not include localhost
	+ check for .desktop files inside /usr/share/xsessions/ to know what name to give
    + sudo vim /etc/tigervnc/vncserver.users
    + add :1 <username>
    + check the spacing in this file
    + the username should be a user in the host PC
    + pacman -S ufw
    + ufw allow 5901/tcp
    + sudo systemctl enable ufw
    + sudo ufw enable
    + sudo ufw status
    + sudo systemctl enable vncserver@:1
    + on the client machine:
	+ install tigervnc for vncviewer
	+ vncviewer <ip-address>:1
    + install openbox on the host machine as your default desktop is likely to break
      when vncserver daemon is running.:
      + The problem arises because when we try to login as the same user locally and on the vncserver daemon, DEs like gnome and xfce might not support it perfectly
      + There maybe temporary hacks for this https://bbs.archlinux.org/viewtopic.php?id=267387
+ fix issue with default file manager wrong application:
    + open the .config/mimeapps.list file and set pcmanfm.desktop in place of the wrong entry.
    + Add this to the default applications section `inode/directory=pcmanfm.desktop`
    + Such problems usually arises because an application has not set the default in the mimeapps.list when it was installed
+ configure ytfzf for rofi:
    +  `export YTFZF_EXTMENU=' rofi -dmenu -fuzzy -width 1500'export YTFZF_EXTMENU=' rofi -dmenu -fuzzy -width 1500'
export YTFZF_ENABLE_FZF_DEFAULT_OPTS=0 `
	+ bind key to ytfzf -D
+ mpv not inhibiting xscreensaver:
    + create lua script as per arch wiki
+ set swappiness value permanently:
    + create a .conf file inside /etc/sysctl.d/
    + containing vm.swappiness=20
+ configure pipewire to autoswtich default device when bluetooth is connected
	+ copy pipewire-pulse.conf from /usr/share/pipewire to /etc/pipewire
	+ uncomment load-module module-switch-on-connect
+ bluetooth level reporting enable
edit the following file and restart bluetooth.service
/etc/bluetooth/main.conf

...
+ setting up wake on lan on BG's workstation:
    + bios> power-management> enable wol
    + some issue with the bios/uefi software that auto boots up machine if wol is enabled
    + Not solved even if deep sleep control is disabled and usb wake up options disabled etc.
+ fix connection time out issue with github due to problem with ISP and dns
+ Edit the etc/hosts file to give custom dns resolver for raw.githubusercontent.com
+ If you are trying to install a python aur package when a virtual environment is active, the destination for files might be in the venv
  you may need to delete the cache files from .cache/paru/clone and then deactivate and build the package again using aur to fix it
+ Wireless configuration setup at home:
    + Connect TP link wireless router to the Jio ONT modem using an ethernet cable to the lan port on TP link instead of the WAN or internet port
    + Configure TP link using access point mode
    + Disable DHCP on TP link
    + Enable static IP and set something like 192.168.0.1 or something as the address and reboot
    + You may not be able to enter the configuration page of tp link after configuring it in access mode
    + If you connect to the ssid of jio and try to connect on http://tplinkwifi.net you may get some page but not get the configuration page
+ System time issues:
    + The time on your system might slowly go out of sync. To fix this
    + Check the output of `timedatectl status` check the system clock synchronized and ntp-service fields. They are probably set to false
    + Set ntp active by `timedatectl set-ntp true`. Now check the output
+ To put custom avatar in lightdm-gtk-greeter:
    + Create a file of size 96x96. Place it in /var/lib/AccountsService/icons/. Provide the proper path to this file in the file ../linn
+ rem2ics official binary is available here but the aur package is orphaned
https://code.launchpad.net/~fallenpegasus/rem2ics/trunk
+ To control charge thresholds already written to firmware:
    + check for the values shown in particular location and echo new values
    + check if the values stay permanent. Even if its not displayed correctly the value might be set
    + check custom cheatsheet for thinkpad
+ setup koreader to access ebooks stored in dropbox:
    + login to dropbox.com/developers
    + Add a new app
    + get the id and secret of the app
    + paste it in the required format in the browser to get the code
    + use the code to contstrcut the curl post command to get the refresh token
    + give the required details in the koreader app
+ setup mpd on android
ref: https://wiki.archlinux.org/title/Music_Player_Daemon/Tips_and_tricks
```
music_directory "/storage/emulated/0/Download"
log_file "/storage/emulated/0/Android/data/org.musicpd/cache/log"
state_file "/storage/emulated/0/Android/data/org.musicpd/cache/log"

audio_output {

	type "sles"
	name "Android music"

}
```
+ Create the mpd.conf file in the root of internal storage /storage/emulated/0/
+ Installed termux and `pkg install vim`
+ Setup internal storage in termux to access the storage folder using `termux-setup-storage`
+ Install the mpd server from f-droid. https://www.musicpd.org/news/2014/02/mpd-on-android/
+ Install mpd client from f-droid https://github.com/abarisain/dmix
+ Not working 100 pc now.
+ To install the labelstudio python package:
    + make sure the python-psycopg2 package is installed
    + create a new virtualenv for this and install

# Hardware acceleration
## Edge
Some info is there in the `arch` cheatsheet
```
# Pre 2023-04-16 version
# --enable-features=VaapiVideoDecoder,VaapiVideoEncoder
# --disable-features=UseChromeOSDirectVideoDecoder
# --use-gl=egl
```
2023-04-16: For HW encode to work (google-meet blurring)
```
--enable-features=VaapiVideoEncoder
--disable-gpu-driver-bug-workarounds
```

## Chromium or Edge
For Video decoding for non VP9; For VP9 the h264ify addon might be needed
```
--disable-features=UseChromeOSDirectVideoDecoder
```
Current flags on Edge
```
--disable-features=UseChromeOSDirectVideoDecoder
--enable-features=VaapiVideoEncoder
--disable-gpu-driver-bug-workarounds
```
# Old configuration for btrfs snapshots
```
# mountpoint for automatic home snapshots script
# /dev/nvme0n1p4
UUID=a395e027-e4df-4c3b-969a-876025575098	/mnt/pool/volumes/home	btrfs     	rw,relatime,compress=zstd:3,ssd,space_cache=v2,commit=120,subvolid=5,subvol=/	0 0
```

# Configuring snapper
```
sudo -s
pacman -S snapper
^ There might already be a btrfs subvolume mounted at /.snapshots
umount /.snapshots
rm -r /.snapshots
snapper -c root create-config /
^ btrfs subv list shows a newly added subvolume by snapper
btrfs subv delete /.snapshots
^ recreate the directory deleted earlier
mkdir /.snapshots
^ verify that etc fstab already has an entry for the /.snapshots subv if so to mount it
mount -a
btrfs subvol get-default /
^ The default should not be this `ID 5 (FS_TREE)`
btrfs subv list /
^ Add the id for root here
btrfs subvol set-default 256 /
^ recheck btrfs subvol get-default /
^ edit the config file created by snapper
^ change defaults like number of snapshots to keep etc.
vim /etc/snapper/configs/root
^ make snapshots viewable by admins
chown -R :wheel /.snapshots
^ make an on-demand snapshot for a working configuration
snapper -c root create -d "***Base System Configuration***"
^ check if it has been added
snapper -c root list
## For home subvolume
^There was no existing subvolume at the default location used by snapper; so run
sudo snapper -c home create-config /home
sudo chown -R :wheel /home/.snapshots
sudo vim /etc/snapper/configs/home
sudo snapper -c home create -d "Manual Backup"
```
# configuring ungoogled chromium browser
Use this https://github.com/NeverDecaf/chromium-web-store for
ability to add chrome add ons immediately

# configuring chromium
To fix malayalam font issue on facebook youtube etc. Use the fontschanger addon and 
add notosans malayalam as the standard font and add exception for fb and youtbe in the extensions
site access setting

# nagging issue with touchpad sometimes not detected or responding.
cp template from /usr/share to /etc/X11/
dont know if it solved the problem.


# Prompt only the password for a default user in virtual console login
Refer to https://wiki.archlinux.org/title/Getty

# For issue with gnome keyring unlock in brave
Add these lines to /etc/pam.d/login
```
auth     optional  pam_gnome_keyring.so
session  optional  pam_gnome_keyring.so auto_start
```

# Things to do on a workstation
## set up ssh
create new ssh key on machine
load it using ssh-add
transfer it to old machine using ssh-add -L and copy pasting into telegram or something
UPDATE: The above can achieved simply by the ssh-copy-id command
add it to git hub
## Sync passwords
git clone <password-store-repo>
cat ~/.password-store/.gpg_id to see the key id used for encrypting
export gpg key from old machine
import gpg key on second machine

# Things to do on laptop pc
 setxkbmap -option caps:escape # map caps to escape  
 setxkbmap -option caps:swapescape # switch both the keys

# openbox browser doesnt close on ctrl-q
change the binding of "Alt+F4" in rc.xml

# Additional dns servers in /etc/resolv.conf

# LF-file manager
Enable image previews using ueberzug  
Enable colors and icons by copying files to config dir

## handle lid close event

For write permission issue with conda a way to bypass is by changing ownership of miniconda3 directory in /opt
but what happens when paru updates it? 
# Vim Ultisnips for latex completion
 The snippets can be found inside vim-snippets folder in vim directory

copy .xprofile where things like xcompmgr are started
# list of stuff to copy
.config/openbox  
.bash_profile  
.config/trello-cli  
.config/lf/{preview,cleaner,lfrc}

# hibernation
1. have a swap partition
2. edit grub to include resume kernel parameter
3. edit mkinitcpio.conf to add resume hook
4. check arch wiki for details

# set up barrier
install barrier package  
generate the .pem ssl keys as given in arch wiki  
give the name of the second machine as configured in the second machine in the server  
copy the fingerprint file to a particular location in the client  
start barrier with enable-crypto flag

# Miscellaneous
synchronize clocks using timedatectl and ntp

To allow client to use X11 on server add the following line in /etc/ssh/sshd_config and restart sshd using systemctl restart

X11Forwarding yes

# Uninstall Koofr
https://koofr.eu/help/linking-koofr-with-desktops/how-do-i-uninstall-the-desktop-client-for-linux/

# Add djvu thumbnailer to pcmanfm-qt
https://github.com/lxqt/pcmanfm-qt/wiki#thumbnails

# debug issues with j4-dmenu-desktop
--log-level DEBUG

# add user to `storage` group for bashmount to work on certain partitions

ctrl+w shortcut is enabled in many apps like evince, xfce4-terminal etc and closes the window.

# adding minconda path might lead to issue with clear command
# to fix it add this
export TERMINFO=/usr/share/terminfo

# temporary hack to get only primary monitor or one that is on the right of the first monitor
# when using a mulit-monitor setup
import -silent -window root -geometry $(xrandr | awk '/\*/ {print $1; exit}') ~/Pictures/"$timestamp".png

