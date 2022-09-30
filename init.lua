-- Anon fn for moving focused window to the left
-- Key combo: CMD + ALT + CTRL + ←
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
  
    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

-- Anon fn for moving focused window to the right
-- Key combo: CMD + ALT + CTRL + →
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

-- Anon fn for maximising focused window
-- Key combo: CMD + ALT + CTRL + ↑
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
    local win = hs.window.focusedWindow()
    win:setFullScreen(true)
end)

-- Anon fn for unmaximising focused window
-- Key combo: CMD + ALT + CTRL + ↓
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
    local win = hs.window.focusedWindow()
    win:setFullScreen(false)
end)

-- Anon fn for moving a window to the other screen 
-- Key combo: CMD + ALT + CTRL + N
hs.hotkey.bind({'cmd', 'alt', 'ctrl'}, 'N', function()
    local win = hs.window.focusedWindow()
    local otherScreen = win:screen():next()
    win:moveToScreen(otherScreen, false, true)
end)