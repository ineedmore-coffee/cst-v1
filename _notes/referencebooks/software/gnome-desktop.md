---
title: GNOME Desktop
---

*A modern, opinionated desktop environment, providing good visual consistency at the cost of resource usage*

I have an interesting relationship with GNOME. On the one hand, I hate the increasing difficulty in theming it, and am annoyed that it takes a substantial amount of extensions to make my system look the way I want. That being said, it's definitely the most modern-feeling Linux desktop out there, and brings a lot of things that can be essential on mobile systems, like touchpad gestures and touchscreen support.

## Resources

- [GNOME Website](https://www.gnome.org)
- [Arch Wiki GNOME Page](https://wiki.archlinux.org/title/GNOME)
- [Arch Wiki GNOME "Tips and Tricks"](https://wiki.archlinux.org/title/GNOME/Tips_and_tricks)

## Tips and Tricks

### Enabling Fractional Scaling

To enable fractional scaling on GNOME under wayland, first enable the experimental fractional scaling feature by running:

```
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
```
Then, open *Settings > Devices > Displays*, and set the display scale.