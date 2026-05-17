o.window({ tag = "floating-window" }, { float = true, center = true, size = { 875, 600 } })

o.window("(org.myarch.bluetui|org.myarch.impala|org.myarch.wiremix|org.myarch.btop|org.myarch.terminal|org.myarch.bash|org.codeberg.dnkl.foot|org.gnome.NautilusPreviewer|org.gnome.Evince|com.gabm.satty|Myarch|About|TUI.float|imv|mpv)", { tag = "+floating-window" })
o.window({ class = "(xdg-desktop-portal-gtk|sublime_text|DesktopEditors|org.gnome.Nautilus)", title = "^(Open.*Files?|Open [F|f]older.*|Save.*Files?|Save.*As|Save|All Files|.*wants to [open|save].*|[C|c]hoose.*)" }, { tag = "+floating-window" })
o.window("org.gnome.Calculator", { float = true })

-- Screen saver should always cover the screen and not be tiled.

-- Media/image/video apps should be opaque.
o.window("^(zoom|vlc|mpv|org.kde.kdenlive|com.obsproject.Studio|com.github.PintaProject.Pinta|imv|org.gnome.NautilusPreviewer)$", { tag = "-default-opacity", opacity = "1 1" })

-- Common app-controlled tags.
o.window({ tag = "pop" }, { rounding = 8 })
o.window({ tag = "noidle" }, { idle_inhibit = "always" })

-- Disable animations for image selector overlay.
hl.layer_rule({ match = { namespace = "myarch-image-selector" }, no_anim = true })
