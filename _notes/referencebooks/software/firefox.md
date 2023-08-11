---
title: "Firefox"
---

*A free and open-source web browser developed by Mozilla. Uses Gecko, an alternative browser engine.*

Firefox is my browser of choice at the moment, and will likely be for the forseeable future given that I don't want to contribute to Chromium's increasing monopoly, and Mozilla doesn't pull (as many) user-hostile moves as Google.

## Resources

- [Official Website](https://www.mozilla.org/en-US/firefox/new/)

## Extensions

No browser is useful without extensions (hence why I've never tried seriously using GNOME Web). Here are some of the ones I use with Firefox:

### Aesthetic

- [Adaptive Tab Bar Color](https://github.com/easonwong-de/Adaptive-Tab-Bar-Colour) — Makes Firefox's tab bar adapt color based on the color of the webpage being viewed, and I just love how it looks and how it makes websites feel more integrated into my digital space.

### Privacy/Security

- [uBlock Origin](https://github.com/gorhill/uBlock#ublock-origin)(uBO) — The straight-up best adblocker once can install. A must-have for browsing the modern internet.
- [Privacy Badger](https://privacybadger.org/) — A tracker blocker by the [EFF](https://www.eff.org/). A good second line of defense when combined with uBO.
- [DuckDuckGo Privacy Essentials](https://addons.mozilla.org/en-US/firefox/addon/duckduckgo-for-firefox/) — An extension developed by DuckDuckGo that has various privacy-protecting features.
- [MinerBlock](https://github.com/xd4rker/MinerBlock) — Attempts to block browser-based crypto miners. Especially considering I sometimes access the web from underpowered machines, it's good to have around.
- [Link Cleaner+](https://github.com/apiraino/link_cleaner/) — Removes various tracking parameters from URLs, helps mitigate tracking across sites.
- [Smart Referer](https://gitlab.com/smart-referrer/smart-referer) — Automatically hides [HTTP Referers](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referer) and [JavaScript Referers](https://developer.mozilla.org/en-US/docs/Web/API/Document/referrer) to help mitigate tracking across sites.
- [HTTPZ](https://github.com/claustromaniac/httpz) — Attempts to redirect `http` requests to `https` when possible.

Honestly, as I compile this list I realize that some of these extensions are quite redundant, but don't feel like fixing what ain't broken.

### Utility

- [User Agent Switcher](https://gitlab.com/ntninja/user-agent-switcher) — Allows users to manually set their user agent. This is really helpful as a Linux user, for websites that turn away non-Windows/Mac user agents for no clear reason.
- [Temporary Containers]https://github.com/stoically/temporary-containers) — A companion to [Firefox containers](https://support.mozilla.org/en-US/kb/how-use-firefox-containers) that lets users spin up temporary, ephemeral containers. Unexpectedly useful.
- [Tab Unloader](https://addons.mozilla.org/en-US/firefox/addon/tab-unloader-we/) — Allows the user to manually suspend tabs. Really useful on machines with low RAM.

## Tips and Tricks

### Enabling Wayland Support

Wayland support can be enabled in Firefox using the `MOZ_ENABLE_WAYLAND=1` environment variable. On the [[flatpak]] version, this is easily done using [[Flatseal]].
