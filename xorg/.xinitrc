#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi
gpg-connect-agent updatestartuptty /bye
# Execute WindowMaker
exec wmaker > ~/xsession.log 2>&1
# Execute Enlightenment
# exec enlightenment_start > ~/xsession.log 2>&1 
