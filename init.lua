-- Load Ergonomic and visual tweaks such as tabstop and line numbers
require("config.opts")

-- Load Keybinds
require("config.keymaps.general")
require("config.keymaps.lsp")

-- Load plugins 
require("plugs.theme")

-- Load language configurations
require("langs.cpp")
require("langs.python")
