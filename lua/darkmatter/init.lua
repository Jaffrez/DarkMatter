_G.dm = require("darkmatter.core")
local utils = require("darkmatter.utils")

dm.setup.neovide()
dm.setup.keymaps()
dm.setup.options()

require("darkmatter.lazy").setup("darkmatter.plugins", dm.config.lazy)
