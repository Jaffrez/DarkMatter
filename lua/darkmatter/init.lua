local dm = require("darkmatter.core")
local utils = require("darkmatter.utils")

dm.setup_neovide()
dm.setup_keymaps()
dm.setup_options()

require("darkmatter.lazy").setup("plugins", dm.lazy_config)
