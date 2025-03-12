---Clipper.JoinType
---**Link:** [Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Types/JoinType.htm)
---
---**Note:** The JoinType enumeration is only needed when offsetting (inflating/shrinking). It isn't needed for polygon clipping. It specifies how to manage offsetting at convex angled joins. Concave joins will always be offset with a mitered join.<br/><br/>When adding paths to a ClipperOffset object via the AddPaths method, the JoinType parameter must specify one of the following types - Miter, Square or Round.
---**Caution:** Bevel is not supported in LS implementation of Clipper.
---@class JoinType
---@field Square number #![Square](https://angusj.com/clipper2/Images/JoinType_square.svg)
---@field Round number #![Round](https://angusj.com/clipper2/Images/JoinType_round.svg)
---@field Miter number #![Miter](https://angusj.com/clipper2/Images/JoinType_miter.svg)
Clipper.JoinType = {}

