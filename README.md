# Usage

1. Download the file to `~/bin/`
2. Make the file executable
```bash
$ chmod u+x <filename>.sh
```
3. Add `~/bin/` to `$PATH` (instructions [here](https://wiki.archlinux.org/title/environment_variables#Defining_variables))

# Description

## brightness.sh

Sets your brightness (as per the [Weber-Fechner law](https://en.wikipedia.org/wiki/Weber%E2%80%93Fechner_law); it's not perfect but it's better than just incrementing by a certain value)

### Options

| Parameters          | Action                 |
| ------------------- | ---------------------- |
| [nothing]           | Double your brightness |
| down                | Halve your brightness  |
| set <integer 0-255> | Set to specific value  |

## cloc-git.sh

Source and instructions at [here](https://stackoverflow.com/users/578288/rory-okane).

## dwm-status.sh

might give up on this and just use dwmblocks cuz it's kinda pointless tbh

## feh-background

Sets your background to ~/Images/wallpaper.*

## maim-dmenu.sh

Spawns dmenu with multiple options for maim.

Saves to `~/Images/Screenshots` by default

## minecraft.sh

Might be useful if `minecraft-launcher` gives you something like
```console
terminate called after throwing an instance of 'std::runtime_error'
 what():  locale::facet::_S_create_c_locale name not valid
fish: Job 1, 'minecraft-launcher' terminated by signal SIGABRT (Abort)
```
but it's probably better that you try to set up your locales properly before trying this.

## nmgui.sh

Spawns `nm-applet` with Stalonetray

## spotify-adblock.sh

Launches Spotify with [abba23's adblock](https://github.com/abba23/spotify-adblock)

## u-drive.sh

Mounts the U-drive for University of Adelaide students. 

## uni-wifi.sh

Sometimes the Wi-Fi connection gets messed up. This usually fixes it.

# Dependencies

| Scripts            | Dependencies                                                          |
| ------------------ | --------------------------------------------------------------------- |
| cloc-git           | [CLOC](http://cloc.sourceforge.net/), Git                             |
| feh-background     | feh                                                                   |
| maim-dmenu         | dmenu, maim                                                           |
| minecraft-launcher | minecraft-launcher                                                    |
| nmgui              | NetworkManager, Stalonetray                                           |
| spotify-adblock    | Spotify, [spotify-adblock](https://github.com/abba23/spotify-adblock) |
| u-drive            | st, [VPN to Uni](https://github.com/yuezk/GlobalProtect-openconnect)  |
| uni-wifi           | NetworkManager                                                        |