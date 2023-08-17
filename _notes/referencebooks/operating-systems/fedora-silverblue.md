---
title: "Fedora Silverblue"
---

*Fedora Silverblue is an immutable Linux distro, based on Fedora Linux, that uses rpm-ostree. It ships a near-vanilla [[gnome-desktop|GNOME]] experience by default, and package management is generally done via [[Flatpak]] applications or containerized environments like [Toolbx](https://containertoolbx.org/).*

I personally use Fedora Silverblue as my operating system of choice for my primary laptop, and really love it's mix of modernity and stability, as well as the Flatpak + containers workflow it holds me to using.

## Useful Software

### Package Manager
- [[Flatpak]] — Gets you a wide selection of the latest applications, and can install without a restart unlike rpm-ostree

### Containers/Dev Environments
- [[Distrobox]] — I feel that distrobox is far more of a complete and efficient solution for running containers than the included [Toolbx](https://containertoolbx.org/)

## Tips and Tricks

### Theming

Honestly, it's not worth trying to theme Fedora Silverblue. As is, [[gnome-desktop|GNOME]] gets less and less themable by the release, and add in an immutable filesystem and juggling container applications and it becomes a real pain.

### Hiding/Removing Built-In Firefox

By default on Fedora Silverblue, [[Firefox]] is installed as an overlaid RPM package. However, this isn't ideal, as it makes codec installation very difficult and updates slower. Therefore, we really want the [[Flatpak]] version, more specifically [the one from Flathub](https://flathub.org/apps/org.mozilla.firefox). However, we then have two desktop entries labelled "Firefox", which isn't ideal.

The first way this can be done is by hiding the desktop entry of the built-in [[Firefox]], so that we can just pretend it isn't there. We can achieve this with the following commands (pulled from [this Fedora documentation page](https://docs.fedoraproject.org/en-US/fedora-silverblue/tips-and-tricks/#_hiding_the_default_browser_firefox)):

```
sudo mdkir -p /usr/local/share/applications/
sudo cp /usr/share/applications/firefox.desktop /usr/local/share/applications/
sudo sed -i "2a\\NotShowIn=GNOME;KDE" /usr/local/share/applications/firefox.desktop
sudo update-desktop-database /usr/local/share/applications/
```

Alternatively, if we don't care about whether it impacts updates or anything later, and just want it fully off our system, we can completely remove the RPM package with the following command:

```
rpm-ostree override remove firefox firefox-langpacks
```

After a restart, the Firefox RPM should be gone.