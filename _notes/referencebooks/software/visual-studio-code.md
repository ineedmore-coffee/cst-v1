---
title: "Visual Studio Code"
---

*An Electron-based code editor built by Microsoft that supports a wide variety of programming languages and has a rich extension ecosystem. Regarded as lightweight compared to offerings from others like JetBrains, and is far and away the most popular IDE out there. The official Microsoft builds have proprietary customizations to the open-source codebase, but there are alternatives, such as VSCodium, that are fully open-source*

VSCode is currently my main code editor, and has been for quite a long time (there was a brief stint where I tried to use [[GNOME Builder]] for general HTML and code editing, but I came back pretty quickly). VSCode is just the best offering out there at the moment for anyone that doesn't have the time or will to learn vim, as it has a rich extension ecosystem and has at least basic support almost every language one could think of programming in.

## Resources
- [Official Site](https://code.visualstudio.com/)
    - [Visual Studio Marketplace](https://marketplace.visualstudio.com/search?target=VSCode&category=All%20categories&sortBy=Installs)
- [VSCodium Site](https://vscodium.com/)
    - [OpenVSX Registry](https://open-vsx.org/)
- [Code-OSS](https://github.com/microsoft/vscode)
- [Arch Wiki Page](https://wiki.archlinux.org/title/Visual_Studio_Code)

## Tips and Tricks

### Favorite Extensions

Some of my favorite extensions are:
- [Carbon Product Icons](https://marketplace.visualstudio.com/items?itemName=antfu.icons-carbon)
- [Emoji File Icons](https://marketplace.visualstudio.com/items?itemName=mightbesimon.emoji-icons)
- [Indent Rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow)
- [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)
- [Day Night Theme Switcher](https://marketplace.visualstudio.com/items?itemName=freetonik.day-night-theme-switcher)

### VSCodium vs. Code-OSS

Both VSCodium and Code-OSS are open-source builds of VSCode. Code-OSS is simply the open-source codebase that VSCode is built off of, while VSCodium makes some additional customizations to use the [OpenVSX registry](https://open-vsx.org/), remove telemetry, and all around deliver a more complete offering. Some Linux distros, like Arch, do customize Code-OSS to add things like OpenVSX, but IMO I think I'd go for VSCodium when installing an open-source version of VSCode.

### Running VSCode or Code-OSS natively on Wayland

**Important Note: This specifically covers the `visual-studio-code-bin` (AUR) and `code` packages on [[Arch Linux]]. I primarily run VSCode via an [[Arch Linux]] [[distrobox]] container.**

Both `visual-studio-code-bin` and `code` on [[Arch Linux]] read from `~/.config/code-flags.conf`. To run it natively on wayland, we can add the following to that file:

```
--enable-features=WaylandWindowDecorations
--ozone-platform-hint=auto
```

For more info, see the [Wayland Electron Arch Wiki Entry](https://wiki.archlinux.org/title/Wayland#Electron).


### Installing VSCode Extensions on VSCodium/Code-OSS

To install extensions from VSCode on VSCodium/Code-OSS, simply navigate to the [Visual Studio Marketplace](https://marketplace.visualstudio.com/search?target=VSCode&category=All%20categories&sortBy=Installs) and find the extension. On the page, scroll down and find the **Resources** section on the right side of the screen, and click **Download Extension**.

Then, in VSCodium/Code-OSS, navigate to the extensions tab. On the top right of the panel, click on the 3 dots, then click on **Install from VSIX**. Select the file you downloaded, and it should install. Some extensions won't work, however, as they rely on hardcoded bits in the Microsoft build of VSCode.

### Fix GNOME Dash Icon When Running In Distrobox on Wayland

See [[Distrobox]] for instructions on how to fix [[GNOME|gnome-desktop]] Dash icons of exported applications. 

Notes:
- Remember to edit the `StartupWMClass` in both `containername-code.desktop` and `containername-code-url-handler.desktop`
- Last I checked, the correct `StartupWMClass` for both desktop files is `code-url-handler`

### Generating HTML Boilerplate

VSCode has a built-in shortcut you can use for generating all the boilerplate needed for an HTML file in one go. Please note that this shortcut only works while editing a file with the `.html` extension or a text file with the HTML language already selected. To trigger the shortcut, delete everything in the `index.html` file and just enter `!` on the first line. This will bring up a couple of options. Press the `Enter` key to choose the first one, and voila, you should have all the boilerplate populated for you.