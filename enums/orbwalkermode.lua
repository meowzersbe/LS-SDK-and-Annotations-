---OrbwalkerMode bitflag
---
---**Tip:** You can use `bit` operations to set multiple active modes at once. See [`bit library`](/developers/sdk-documentation/library/bit).
--[[```lua
-- Example: Programmatically set Orbwalker active mode(s) using bit library.
Orbwalker.activeMode = bit.bxor(Orbwalker.activeMode, OrbwalkerMode.Combo) -- Set Combo
Orbwalker.activeMode = bit.band(Orbwalker.activeMode, bit.bnot(OrbwalkerMode.Combo)) -- Unset Combo
```]]
---@class OrbwalkerMode
---@field None number
---@field Combo number
---@field Harass number
---@field LastHit number
---@field LaneClear number
---@field JungleClear number
---@field Flee number
OrbwalkerMode = {}

