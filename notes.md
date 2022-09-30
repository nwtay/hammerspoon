# Hammerspoon Docs

## Hello World

In `init.lua`, paste the following

```lua
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.alert.show("Hello World!")
end)
```

Then save the file, click on the Hammerspoon menubar icon and choose `Reload Config`. You should now find that pressing `⌘`+`⌥`+`ctrl`+`W` will display a Hello World notification on your screen.

Under the hood, Hammerspoon binds an anonymous function a particular hotkey. The hotkey is specified by a table of **modifier keys**: `⌘`+`⌥`+`ctrl` and a **normal key**: `W`. 



## Spoons

Spoons are pre-made plugins for Hammerspoon. 

Official docs [here](https://github.com/Hammerspoon/hammerspoon/blob/master/SPOONS.md).

Sharing code between Hammerspoon configs is difficult, Spoons addresses this. Users can download a Spoon and quickly integrate it into their config without worrying about what is done internally. 



## Window Management

Add the following to your `init.lua`:

```lua
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  win:setFrame(f)
end)
```

When pressing this key combination, the currently focused window will move 10px to the left.

We start off by fetching the currently focused window, and obtain its frame. This describes the location and size of the window. We can modify the frame and apply it back to the window using `setFrame()`. 

Syntax on method calls:

- When calling `:<method>` on an object, you're calling one of that object's methods; the function call implicitly passes the object to the method as a `self` argument. 



`hs.geometry`

- Hammer spoon object with x,y coordinates as well as w,h



`hs.screen`

- The macOS coordiante system used by Hammerspoon assumes a grid that spans all screens
- Origin `0,0` at top left corner of primary screen 
- Screens to left of primary screen have negative coordinates



`hs.window:frame()`

- gets the frame of the window in absolute coordinates
- it's a hs.geometry object containing the coordinates of the top left corner of the window and its width and height