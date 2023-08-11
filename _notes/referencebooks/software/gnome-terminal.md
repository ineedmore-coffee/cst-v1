---
title: "GNOME Terminal"
---

*The default terminal emulator included in GNOME. It's nothing crazy, but looks ok and gets the job done.*

I personally use GNOME Terminal on my Fedora Silverblue installs because it's just already there. No configuration, no overlays, no mucking around, and it looks decent enough.

## Resources
- [GNOME Terminal Help Page](https://help.gnome.org/users/gnome%2Dterminal/stable/)
- [Arch Wiki GNOME "Tips and Tricks"](https://wiki.archlinux.org/title/GNOME/Tips_and_tricks#Terminal)

## Tips and Tricks

### Add Terminal Padding

To add padding to GNOME Terminal, create the file `~/.config/gtk-3.0/gtk.css` and add the contents below:

```css
vte-terminal,
terminal-window {
    padding: 10px 10px 10px 10px;
    -vte-terminal-inner-border: 10px 10px 10px 10px;
}
```

### Disable Cursor Blinking

To disable cursor blinking, simply run the command `gsettings set org.gnome.desktop.interface cursor-blink false`. 