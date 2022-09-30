# Hammerspoon

This repo contains custom-built hammerspoon scripts for macOS window management.

The hyper key is defined as the three following modifier keys:

- `⌘`+`⌥`+`^` [CMD + ALT + CTRL]

Using my `init.lua` script, the `hyper key` can be used in conjunction with the following `normal key`'s to invoke the required action:

| Normal Key | Hammerspoon Action                              |
| ---------- | ----------------------------------------------- |
| `←`        | Move currently focused window to the left       |
| `→`        | Move currently focused window to the right      |
| `↑`        | Maximise currently focused window               |
| `↓`        | Unmaximise currently focused window             |
| `N`        | Move currently focused window to another screen |



## What is Hammerspoon?

A desktop automation tool for macOS, acting as a bridge between macOS system level APIs and a Lua scripting engine. Commonly used to build bespoke personal productivity scripts. 

Typical use involves writing a configuration file in Lua that connects events to actions, such as keyboard shortcuts that initiate window operations. 

[Getting Started Guide](https://www.hammerspoon.org/go/)

[Full API documentation](https://www.hammerspoon.org/docs/)



## Setup

[Download the latest release](https://github.com/Hammerspoon/hammerspoon/releases/latest) and then drag the application to `/Applications/`.

Run `Hammerspoon.app` and follow the prompts to enable Accessibility access for the app. 

Click on the Hammerspoon menu bar icon and choose `Open Config` from the menu. 

Out of the box, hammerspoon does nothing. You need to create a Lua script in `~/.hammerspoon/init.lua` using hammerspoon and standard Lua APIs. 

Copy this [init.lua file](./init.lua) into the `~/.hammerspoon` directory and press `Reload Config` in the Hammerspoon console to use the Hammerspoon actions.

