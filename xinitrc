# setup colors
xrdb -merge ~/.Xresources

# start keychain as user
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# keyboard repeat rate
#xset r rate 200 35

# swap alt/super
#xmodmap ~/.xmodmap/swapaltsuper.txt

# start session
#exec i3
exec cinnamon-session
