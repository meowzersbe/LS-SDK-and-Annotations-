---Bind / Unbind event handlers (callbacks).
---@class Callback
Callback = {}

---Binds specified callback functions and returns unique handler.
---@param type CallbackType #Callback type.
---@param callback CallbackSignatures #Callback function. Check CallbackSignatures for examples.
---@param priority number #(integer) Callback priority. 0 by default.
---@return number #Unique callback handle.
---@see CallbackSignatures
Callback.Bind = function(type, callback, priority) end

---Unbind callback by unique handler.
---@param handle number #Callback handle to unbind.
Callback.Unbind = function(handle) end

---@alias _CbSigDefault fun(): void #OnDraw, OnImguiDraw, OnTick, OnFastTick, OnUnload
---@alias _CbSigOnBeforeAttack fun(beforeAttackOrbwalkerArgs: BeforeAttackOrbwalkerArgs): void #OnBeforeAttack
---@alias _CbSigOnAfterAttack fun(afterAttackOrbwalkerArgs: AfterAttackOrbwalkerArgs): void #OnAfterAttack
---@alias _CbSigOnIssueOrder fun(issueOrderArgs: IssueOrderArgs): CallbackResult #OnIssueOrder
---@alias _CbSigOnCastHud fun(spellData: Spell, targetHandle: number): CallbackResult #OnCastHud
---@alias _CbSigOnSpellCast fun(castSpellArgs: CastSpellArgs): CallbackResult #OnSpellCast, OnSpellCast2
---@alias _CbSigOnValidateInput fun(hweicastArgs: hweicast_args): CallbackResult #OnValidateInput
---@alias _CbSigOnSpellAnimationStart fun(sender: AIBaseClient, castArgs: CastArgs): void #OnSpellAnimationStart
---@alias _CbSigOnSpellCastComplete fun(sender: AIBaseClient, castArgs: CastArgs): void #OnSpellCastComplete
---@alias _CbSigOnSpellAnimationCancel fun(sender: AIBaseClient, castArgs: CastArgs): void #OnSpellAnimationCancel
---@alias _CbSigOnUpdateMissile fun(pos: Vector3): void #OnUpdateMissile
---@alias _CbSigOnUpdateChargeableSpell fun(spellBook: SpellBook, spellBookEntry: SpellBookEntry, slot: SpellSlot, pos: Vector3, isRelease: boolean): void #OnUpdateChargeableSpell
---@alias _CbSigOnChangeSlotSpellName fun(sender: AIBaseClient, slot: SpellSlot, name: string): void #OnChangeSlotSpellName
---@alias _CbSigOnEvolve fun(slot: SpellSlot): void #OnEvolve
---@alias _CbSigOnObjectCreate fun(sender: GameObject): void #OnObjectCreate
---@alias _CbSigOnObjectRemove fun(sender: GameObject): void #OnObjectRemove
---@alias _CbSigOnPrintChat fun(message: string, flags: number): void #OnPrintChat
---@alias _CbSigOnNewPath fun(sender: AIbaseClient, isDash: boolean, dashSpeed: number, path: Vector2[]): void #OnNewPath
---@alias _CbSigOnGainLoseBuff fun(buffScriptInstance: BuffScript, isGain: boolean): void #OnGainLoseBuff
---@alias _CbSigOnUpdateBuff fun(sender: AIBaseClient, buffInstance: Buff): void #OnUpdateBuff
---@alias _CbSigOnPlayAnimation fun(sender: AIBaseClient, animationName: string): void #OnPlayAnimation
---@alias _CbSigOnNotify fun(eventName: string, eventID: number, sourceNetworkID: number): void #OnNotify
---@alias _CbSigOnSendPing fun(pos: Vector3, targetNetworkID: number, type: PingType): void #OnSendPing
---@alias _CbSigOnShowPing fun(pos: Vector3, targetHandle: number, sourceHandle: number, type: PingType, isPlaySound: boolean): void #OnShowPing
---@alias _CbSigOnMinimapIconChange fun(sender: AIBaseClient, name: string, type: string): void #OnMinimapIconChange
---@alias _CbSigOnPacketReceive fun(opcode: string, networkID: number): void #OnPacketReceive
---@alias _CbSigOnWndProc fun(hwnd: string, message: string, wParam: string, lParam: string): void #OnWndProc
---@alias _CbSigOnEvade fun(position: Vector2, spellData: SpellData): void #OnEvade
---@alias _CbSigOnSkillshotCreate fun(skillshot: Skillshot): void #OnSkillshotCreate
---@alias CallbackSignatures function|_CbSigDefault|_CbSigOnBeforeAttack|_CbSigOnAfterAttack|_CbSigOnIssueOrder|_CbSigOnCastHud|_CbSigOnSpellCast|_CbSigOnValidateInput|_CbSigOnSpellAnimationStart|_CbSigOnSpellCastComplete|_CbSigOnSpellAnimationCancel|_CbSigOnUpdateMissile|_CbSigOnUpdateChargeableSpell|_CbSigOnChangeSlotSpellName|_CbSigOnEvolve|_CbSigOnObjectCreate|_CbSigOnObjectRemove|_CbSigOnPrintChat|_CbSigOnNewPath|_CbSigOnGainLoseBuff|_CbSigOnUpdateBuff|_CbSigOnPlayAnimation|_CbSigOnNotify|_CbSigOnSendPing|_CbSigOnShowPing|_CbSigOnMinimapIconChange|_CbSigOnPacketReceive|_CbSigOnWndProc|_CbSigOnEvade|_CbSigOnSkillshotCreate


-- Examples:

-- Example 1: Basic example of binding OnTick event handler and unbinding it.
local onTickHandle = Callback.Bind(CallbackType.OnTick, function()
    -- ...
end)

if onTickHandle then
    Callback.Unbind(onTickHandle)
end

