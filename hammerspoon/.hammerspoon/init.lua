-- Constants
MODIFIERS = {"alt"}    -- Modifiers used for app shortcuts

-- App configuration
APPS = {
  {shortcut = "1", name = "Firefox"},
  {shortcut = "2", name = "Discord"},
  {shortcut = "3", name = "iTerm"},
  {shortcut = "4", name = "Rider"},
  {shortcut = "5", name = "Unity"},
}

-- Bind application shortcuts
for _, app in ipairs(APPS) do
  hs.hotkey.bind(MODIFIERS, app.shortcut, function()
    hs.application.launchOrFocus(app.name)
  end)
end

