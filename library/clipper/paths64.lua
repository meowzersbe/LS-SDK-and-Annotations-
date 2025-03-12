---Paths64 struct
---**Link:** [Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Types/Paths64.htm)
---
---**Note:** This is basically a `std::vector<Path64>` (`std::vector<std::vector<Path64>>`) container.
---**Tip:** `Paths64` represent one or more Path64 structures. While a single path can represent a simple polygon, multiple paths are usually required to define complex polygons that contain one or more holes.
---@class Paths64
local Paths64 = {}
Clipper.Paths64 = Paths64

