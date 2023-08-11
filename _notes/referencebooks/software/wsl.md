---
title: "Windows Subsystem for Linux (WSL)"
---

*The Windows Subsystem for Linux (WSL) lets developers install a Linux distribution (such as Ubuntu, OpenSUSE, Kali, Debian, Arch Linux, etc) and use Linux applications, utilities, and Bash command-line tools directly on Windows, unmodified, without the overhead of a traditional virtual machine or dualboot setup.*

WSL is essential on a Windows machine for me to retain my sanity.

## Resources

- [Install WSL](https://learn.microsoft.com/en-us/windows/wsl/install)
- [Basic commands for WSL](https://learn.microsoft.com/en-us/windows/wsl/basic-commands)
- [Import any Linux distribution to use with WSL](https://learn.microsoft.com/en-us/windows/wsl/use-custom-distro)

## Tips and Tricks

### WSLShortcut

[WSLShortcut](https://github.com/HanabishiRecca/WslShortcut) is a really useful tool for a WSL install, allowing you to invoke commands in WSL from outside it. This is especially useful for something like Git, so that you can have it set up inside WSL and then use WSLShortcut to access it from outside, rather than needing to authenticate twice and manage two SSH keys.

To use it:
1. Rename `WslShortcut.exe` to desired command name, e.g. `git.exe`, `node.exe`, `ls.exe` etc. You can make a renamed copy for every command you want.
2. Place this executable(s) to some PATH directory ( `Windows`, `System32` or make your own)
3. Now you can run it directly in cmd (e.g. `git status`, `node -v`, `ls -la`), and VSCode should find things like git or node automatically.