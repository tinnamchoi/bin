Note: These scripts can only be used to launch the apps. To install the packages themselves go to the respective links below:
* [Minecraft](https://www.minecraft.net/en-us/download)
* [Spotify](https://www.spotify.com/au/download/linux/) ([AUR](https://aur.archlinux.org/packages/spotify))
* [Spotify adblock](https://github.com/abba23/spotify-adblock)
* [Feh](https://wiki.archlinux.org/title/feh)
* [NetworkManager](https://wiki.archlinux.org/title/NetworkManager)
* [maim](https://wiki.archlinux.org/title/Screen_capture#maim)

# Usage

1. Download the file
2. Make the file executable
```bash
$ chmod u+x <filename>.sh
```
3. (Optional) Create a symlink in `/usr/local/bin/` to make it launchable with dmenu. Make sure to use the full file path.
```bash
$ sudo ln -s /path/to/<filename>.sh /usr/local/bin/<symlinkname>
```
