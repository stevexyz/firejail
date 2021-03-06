# Firejail profile for gnome-logs
# Description: Viewer for the systemd journal
# This file is overwritten after every install/update
# Persistent local customizations
include gnome-logs.local
# Persistent global definitions
include globals.local

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

whitelist /var/log/journal
include whitelist-var-common.inc

caps.drop all
net none
no3d
nodbus
nodvd
# When using 'volatile' storage (https://www.freedesktop.org/software/systemd/man/journald.conf.html),
# comment both 'nogroups' and 'noroot'
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none

disable-mnt
private-bin gnome-logs
private-dev
private-etc fonts,localtime,machine-id
private-lib gdk-pixbuf-2.*,gio,gvfs/libgvfscommon.so,libgconf-2.so.*,librsvg-2.so.*
private-tmp
writable-var-log

noexec ${HOME}
noexec /tmp
