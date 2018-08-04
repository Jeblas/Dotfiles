#!/bin/sh
# referencing https://github.com/ivyl/i3-config/blob/master/xinitrc

# use xresources
xrdb -merge $I3_CONFIG_DIR/xresources


# dynamic color temperature adjustment
if [ -e $I3_CONFIG_DIR/redshift ]; then
    source $I3_CONFIG_DIR/redshift
else # default setup, for gdansk
    redshift -l 54.35:18.65 -m randr -t 5500:4500 -g 0.75:0.75:0.75 &
fi

# disks automounting
udiskie &

exec i3
