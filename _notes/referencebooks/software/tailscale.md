---
title: "Tailscale"
---

*A mesh VPN powered by Wireguard.*

Tailscale is truly an incredible service and piece of software. It allows all of my devices to talk to each other securely, regardless of what network they are on. All of my primary devices are always connected to Tailscale, allowing me to send files between them, establish SSH and RDP sessions, and much more.

## Clients

- [Official Clients](https://tailscale.com/download/) (Windows, Mac, Android, iOS)
- [Trayscale](https://github.com/DeedleFake/trayscale) (an unofficial GUI wrapper for the CLI on Linux)

## Tips and Tricks

### GUI Usage on Linux

Tailscale doesn't have a GUI application for Linux. However, there's an application called [Trayscale](https://github.com/DeedleFake/trayscale) that acts as a GUI wrapper for the command line client, and allows us to turn Tailscale on or off, as well as modify some settings.

### Installing on Fedora Silverblue

(Pulled from [this blog post](https://blog.arkadi.one/p/installing-tailscale-on-fedora-silverblue/))

To install Tailscale on [[Fedora Silverblue]], we need to make some minor modifications to the standard Fedora installation instructions.

First, we move to the repository folder, and download Tailscale's repository file with `wget`:

```
cd /etc/yum.repos.d/
sudo wget https://pkgs.tailscale.com/stable/fedora/tailscale.repo
```

Then, we install it using `rpm-ostree`, and reboot to apply the changes:

```
rpm-ostree install tailscale
systemctl reboot
```

Now that Tailscale is installed, we can start the systemd service so that Tailscale's daemon starts at boot:


```
sudo systemctl enable --now tailscaled
```

Finally, we can connect to Tailscale with:

```
sudo tailscale up
```

This will prompt us to authenticate via a web browser, after which we can confirm we're connected to Tailscale with `tailscale ip -4`.