---Base entity class.
---
---**Tip:** `__eq` has been overriden so that you can just use `==` to compare entities.
---@class GameObject
---@field team Team
---@field handle integer
---@field networkId integer
---@field isVisibleOnScreen boolean
---@field type ObjectType
---@field flags integer
---@field displayName string
---@field bboxMax Vector3
---@field bboxMin Vector3
---@field position Vector3
---@field position2D Vector2
---@field isVisible boolean
---@field isAlive boolean
---@field isMe boolean
---@field hitboxRadius float
---@field isStructure boolean
---@field isAttacableUnit boolean
---@field isAlly boolean
---@field isEnemy boolean
---@field isNeutral boolean
---@field isMonster boolean
---@field isAIBase boolean
---@field isMinion boolean
---@field isHero boolean
---@field isTurret boolean
---@field isMissile boolean
GameObject = {}

---Returns object casted as final type.
---@return GameObject
GameObject.CastAsFinal = function(self) end

---Returns the entity level.
---@return number
GameObject.Level = function(self) end

---Returns the entity's memory address.
---@return number
GameObject.GetAddress = function(self) end

---Print the entity's memory address on console.
GameObject.PrintAddress = function(self) end

---Returns if this is a valid entity.
---@return boolean
GameObject.IsValid = function(self) end

---Returns entity's unique name.
---@return string
GameObject.GetUniqueName = function(self) end

---Returns entity's unique data table.
---@return table<any>
GameObject.GetData = function(self) end

