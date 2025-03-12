---Renderer.RenderStage
---
---**Note:** Part of Renderer namespace.
---@class RenderStage
---@field World number #World render stage. After the world, but before grass, structures and entities.
---@field HUD number #HUD render stage. After the world, grass, structures and entities, but before game UI.
---@field GUI number #GUI render stage. After all game UI, but before ImGui.
---@field ImGui number #ImGui render stage.
Renderer.RenderStage = {}

