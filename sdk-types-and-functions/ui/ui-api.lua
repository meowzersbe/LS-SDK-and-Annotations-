---UI namespace
---**Danger:** Please be careful when accessing and overriding settings of other scripts!
---@class UI
---@field rootMenus Menu[] #(std::vector<Menu>) List of all root menus.
UI = {}

---Returns currently selected language.
---@return number #(integer)
UI.GetLanguage = function() end

---Load custom translation `json` file.
---
--[[```lua
-- Example: Basic LoadTranslationFromFile example.
    UI.LoadTranslationFromFile("assets/translation.json", true)
```]]
---@param relativePath string #(path) Relative path to translation `json` file.
---@param override boolean #If true, it will override all existing translation keys.
UI.LoadTranslationFromFile = function(relativePath, override) end

---Load custom translation `json` blob.
---@param jsonBlob string #Translation json.
---@param override boolean #If true, it will override all existing translation keys.
UI.LoadTranslationFromBlob = function(jsonBlob, override) end

---Get translation for selected language and provided key.
---@param key string #Translation key. Should be English string.
---@return string
UI.TranslateString = function(key) end


-- Examples:

-- Example 1: Access Orbwalker Hold Radius settings and temporarily override it.
-- Warning: This is just a PoC to give you an idea how it can be done.
-- We highly advice not to mess around with settings, but if you have to - then please be responsible.
-- If you override some value - make sure to restore it immediately after you executed your logic.

local orbwalkerMenu
for _, v in UI.rootMenus:pairs() do
    if v and v.name and v.name == "Orbwalker" then -- Locate Orbwalker Menu
        orbwalkerMenu = v
        break
    end
end
local holdRadius = orbwalkerMenu["Configuration"]["HoldRadius"] -- Access HoldRadius setting
local originalHoldRadius
local function PushHoldRadius(value)
    if originalHoldRadius then return end -- Make sure we don't override it twice
    originalHoldRadius = holdRadius.value -- Store original value
    holdRadius.value = value -- Override value
end
local function PopHoldRadius()
    if not originalHoldRadius then return end
    holdRadius.value = originalHoldRadius
    originalHoldRadius = nil
end

local function MyLogic()
    PushHoldRadius(50) -- Override
    -- Perform logic
    PopHoldRadius() -- Restore
end

Callback.Bind(CallbackType.OnUnload, function()
    PopHoldRadius() -- Just in case do it OnUnload
    return CallbackResult.Dispose
end)
