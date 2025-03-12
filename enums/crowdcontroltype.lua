---Data.CrowdControlType
---
---**Tip:** This is a part of `Data` namespace (table).
---@class CrowdControlType
---@field Airborne number #Can't move, can't cast, can't aa. you can remove stun effect by cleansing effects (except Cleanse), but you can't remove airborne movement part.after you removed stun effect and you can cast spells again - you can use any mobility spell to override airborne movement.
---@field Blind number #Makes you miss all your aa
---@field Entangle number #Root + disarm: can't move, can't use mobility spells, can't attack
---@field Taunt number #Can't move, can't cast, can't control aa.
---@field Charm number #Can't move, can't cast, can't aa
---@field Fear number #Can't move, can't cast, can't aa.
---@field Flee number #Can't move, can't cast, can't aa.
---@field Ground number #Can move but can't use mobility spells
---@field Nearsight number #Limits your vision
---@field Root number #Can't move, can't use mobility spells such as : dash / flash / teleport / shen R etc
---@field Silence number #Can't cast
---@field Slow number #Slows your movement
---@field Stasis number #Can't move, can't cast, can't aa, makes you untargetable. basically immunity (zhonya etc):
---@field Stun number #Can't move, can't cast, can't aa
---@field Suppression number #Can't move, can't cast, can't aa
---@field Disarm number #Can't aa
---@field Cripple number #Slows attack speed
---@field Disrupt number #Interrupt of channeled and charged spells
---@field Knockdown number #Not really a CC. puts you back on the ground from airborne or dash.It does not trigger Yasuo R.
---@field Suspension number #Same as airborne but can be fully removed by cleansing effects
---@field Sleep number #Can't move, can't cast, can't aa. interrupted if target takes damage.
---@field Pacify number #Disarm + silence: can't aa, can't cast
---@field Polymorph number #Disarm + silence + slow ? : can't aa, can't cast
---@field Berserk number #Can't move, can't cast, can't aa (like stun or charm). A unit that is berserk will attempt to perform basic attacks on a nearby unit regardless of being ally, enemy, or neutral for the duration.
---@field Opener number #Custom (fake) CC type which represents spells with opener capabilities. Such spells usually will be followed up by some dangerous combo. For example Lee Sin Q, Amumu Q and so on.
Data.CrowdControlType = {}

