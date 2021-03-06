---------------------------------
--  "Solarized" awesome theme  --
--    By Chris Ching           --
---------------------------------

require("os")
BASE_DIR = os.getenv("HOME") .. "/";
THEME_DIR = BASE_DIR .. ".config/awesome/themes/solarized/"

--SOLARIZED HEX    
----------- -------
base03    = "#002b36";
base02    = "#073642";
base01    = "#586e75";
base00    = "#657b83";
base0     = "#839496";
base1     = "#93a1a1";
base2     = "#eee8d5";
base3     = "#fdf6e3";
yellow    = "#b58900";
orange    = "#cb4b16";
red       = "#dc322f";
magenta   = "#d33682";
violet    = "#6c71c4";
blue      = "#268bd2";
cyan      = "#2aa198";
green     = "#859900";


-- {{{ Main
theme = {}
theme.wallpaper_cmd = { "awsetbg -c " .. BASE_DIR .. "media/background" }
-- }}}

-- {{{ Styles
theme.font      = "terminus bold 10"

-- {{{ Colors
theme.fg_normal = base00
theme.fg_focus  = base03
theme.fg_urgent = red
theme.bg_normal = base03
theme.bg_focus  = base00
theme.bg_urgent = base00
-- }}}

-- {{{ Borders
theme.border_width  = "2"
theme.border_normal = base03
theme.border_focus  = base00
theme.border_marked = orange
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = base00
theme.titlebar_bg_normal = base03
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = "15"
theme.menu_width  = "150"
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = THEME_DIR .. "taglist/squarefz.png"
theme.taglist_squares_unsel = THEME_DIR .. "taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = THEME_DIR .. "awesome-icon.png"
theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
theme.tasklist_floating_icon = "/usr/share/awesome/themes/default/tasklist/floatingw.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = THEME_DIR .. "layouts/tile.png"
theme.layout_tileleft   = THEME_DIR .. "layouts/tileleft.png"
theme.layout_tilebottom = THEME_DIR .. "layouts/tilebottom.png"
theme.layout_tiletop    = THEME_DIR .. "layouts/tiletop.png"
theme.layout_fairv      = THEME_DIR .. "layouts/fairv.png"
theme.layout_fairh      = THEME_DIR .. "layouts/fairh.png"
theme.layout_spiral     = THEME_DIR .. "layouts/spiral.png"
theme.layout_dwindle    = THEME_DIR .. "layouts/dwindle.png"
theme.layout_max        = THEME_DIR .. "layouts/max.png"
theme.layout_fullscreen = THEME_DIR .. "layouts/fullscreen.png"
theme.layout_magnifier  = THEME_DIR .. "layouts/magnifier.png"
theme.layout_floating   = THEME_DIR .. "layouts/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = THEME_DIR .. "titlebar/close_focus.png"
theme.titlebar_close_button_normal = THEME_DIR .. "titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = THEME_DIR .. "titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = THEME_DIR .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = THEME_DIR .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = THEME_DIR .. "titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = THEME_DIR .. "titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = THEME_DIR .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = THEME_DIR .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = THEME_DIR .. "titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = THEME_DIR .. "titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = THEME_DIR .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = THEME_DIR .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = THEME_DIR .. "titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = THEME_DIR .. "titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = THEME_DIR .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = THEME_DIR .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = THEME_DIR .. "titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
