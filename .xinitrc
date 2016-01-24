xset -dpms
xset s off
VBoxClient-all
xrandr --output VGA-2 --left-of VGA-0 --output VGA-0 --left-of VGA-1
exec "$@"
