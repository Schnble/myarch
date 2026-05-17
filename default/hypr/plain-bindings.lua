require("default.hypr.bindings.media")
require("default.hypr.bindings.clipboard")
require("default.hypr.bindings.tiling-v2")
require("default.hypr.bindings.utilities")

-- Application bindings without Myarch's preinstalled web apps, TUIs, or desktop apps.
o.bind("SUPER + RETURN", "Terminal", { myarch = "terminal" })
o.bind("SUPER + SHIFT + RETURN", "Browser", { myarch = "browser" })
o.bind("SUPER + SHIFT + F", "File manager", { myarch = "nautilus" })
o.bind("SUPER + ALT + SHIFT + F", "File manager (cwd)", { myarch = "nautilus-cwd" })
o.bind("SUPER + SHIFT + B", "Browser", { myarch = "browser" })
o.bind("SUPER + SHIFT + ALT + B", "Browser (private)", { myarch = "browser --private" })
o.bind("SUPER + SHIFT + N", "Editor", { myarch = "editor" })
