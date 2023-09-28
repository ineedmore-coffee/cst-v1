---
title: "Windows 11"
---

*The latest release of the most popular desktop operating system, succeeding Windows 10 in Fall 2021. Has artificially high system requirements, though these can be bypassed pretty easily.*

I don't personally use Windows for much of my primary computing needs anymore, but I do always keep a "sacrificial Windows machine" around.

## Useful Software

### Package Manager

- [[Winget]] — The new built-in package manager for Windows, I try to install software with this when possible

### Debloating/Telemetry Removal

- [Tiny11 Builder](https://github.com/ntdevlabs/tiny11builder) — A script to build a slimmed down Windows 11 install ISO with a lot of unnecessary bits removed/disabled
- [Simplewall](https://www.henrypp.org/product/simplewall) — A simple firewall that helps easily block a lot of telemetry calls from Windows

### Containers/Dev Environments

- [[wsl|Windows Subsystem for Linux]] — Run Linux environments under a Windows host, invaluable for attempting any development work on a Windows machine

## Tips and Tricks

### Removing Cortana

Cortana can be removed entirely with:

```
Get-AppxPackage Microsoft.549981C3F5F10 | Remove-AppxPackage
```

### Removing Widgets

The Widgets feature in Windows 11 can be disabled with:

```
winget uninstall "Windows web experience pack"
```

### Disabling Security Notifications

I personally dislike the built in security notifications in Windows, as what Microsoft's security recommendations are don't always align with how I administer and secure my machines. They can be disabled using Group Policy at this path:

```
Computer Configuration/Administrative Templates/Windows Components/Windows Security/Notifications
```