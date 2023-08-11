---
title: "Fish Shell"
---

*A shell focused on user-friendliness. Features autosuggestions, simple syntax, and useful functions, all without being a pain to configure*

I personally use Fish as my shell whenever possible, as it's just the most user-friendly experience I've found, and I've gotten pretty used to it.

## Resources

- [Official site](https://fishshell.com/)

## Tips and Tricks

### Setting up an SSH Agent

To set up an SSH agent for GitHub authentication, I use [this utility function](https://github.com/ivakyb/fish_ssh_agent). Hasn't been updated for a good few years but it works like a charm.

### Greeting ASCII art

I create a `.banner` in my home folder with ASCII art generated using [[Calligraphy]] and then my `fish_greeting` uses `cat` to display it whenever a terminal is opened. This way, big block letters clearly remind me which container I've just entered.
