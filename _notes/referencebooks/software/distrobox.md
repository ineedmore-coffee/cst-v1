---
title: "Distrobox"
---

*"Use any Linux distribution inside your terminal. Enable both backward and forward compatibility with software and freedom to use whatever distribution you’re more comfortable with. Distrobox uses podman or docker to create containers using the Linux distribution of your choice. The created container will be tightly integrated with the host, allowing sharing of the HOME directory of the user, external storage, external USB devices and graphical apps (X11/Wayland), and audio."*

As I run [[Fedora Silverblue]] on my primary laptop, Distrobox is instrumental for letting me run all the software I need/want, and also enables me to isolate various workloads from each other, reducing clutter and the chance of language version conflicts.

## Resources

- [Documentation](https://distrobox.privatedns.org/#distrobox)
- [GitHub](https://github.com/89luca89/distrobox)
- [Supported Container Distros](https://distrobox.privatedns.org/compatibility/#containers-distros)

## Tips and Tricks

### Using Host System's Git

To use the host system's `git` (so that `git` doesn't need to be configured and authenticated on every single container), simply create a symlink to `distrobox-host-exec` by running the following inside the distrobox container: `ln -s /usr/bin/distrobox-host-exec /usr/local/bin/git` (may need to be run as root).

For whatever reason, on [[Alpine Linux]] `/usr/bin/sh` also needs to be symlinked to `/bin/sh` for this to work correctly. This can be done by running `ln -s /bin/sh /usr/bin/sh` (may need to be run as root).

### Creating a Distrobox container

When I personally create a container, I'll typically name it something-pet (e.g. jekyll-pet). I also separate the home folder to reduce clutter, placing it in an appropriately named folder under `~/Pets`. As such, this is what my creation command tends to look like (primarily for my own reference):

```
distrobox create --name "something-pet" --image whateverimage:version --home $HOME/Pets/something-pet
```

I like to use Alpine images for my containers when possible, as there's just way less performance overhead and startups are snappy, but for containers where I'll be installing graphical applications, I tend to go with Arch.

### [[Fish]] Integrations

For convenience, I usually create a [[Fish]] alias to easily open my containers, using `alias container-name=“distrobox enter container-name”` (don't forget the `funcsave` afterwards).

I also use the banner art instructions found in [[Fish Shell]] to add banners for each container. This way, big block letters clearly tell me which container has been opened. This is especially useful in places like integrated terminals in IDEs.

