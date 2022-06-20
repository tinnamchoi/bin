#!/bin/bash

quick () {
	maim /tmp/maim.png
	cp /tmp/maim.png ~/Images/Screenshots/"$(date '+%Y%m%d-%H%M%S').png"
	xclip -selection clipboard -t image/png < /tmp/maim.png
}

if [[ $1 = "quick" ]]; then
	quick
	exit 0
fi

case "$(printf "Area\\nWindow\\nScreen\\nArea (save)\\nWindow (save)\\nScreen (save)" | dmenu -l 6 -i -p "maim-dmenu")" in
	"Area") maim -us | xclip -selection clipboard -t image/png ;;
	"Window") maim -i "$(xdotool getactivewindow)" | xclip -selection clipboard -t image/png ;;
	"Screen") maim | xclip -selection clipboard -t image/png ;;
	"Area (save)") maim -us /tmp/maim.png; cp /tmp/maim.png ~/Images/Screenshots/"$(date '+%Y%m%d-%H%M%S').png"; xclip -selection clipboard -t image/png < /tmp/maim.png ;;
	"Window (save)") maim -i "$(xdotool getactivewindow)" /tmp/maim.png; cp /tmp/maim.png ~/Images/Screenshots/"$(date '+%Y%m%d-%H%M%S').png"; xclip -selection clipboard -t image/png < /tmp/maim.png ;;
	"Screen (save)") quick ;;
esac
