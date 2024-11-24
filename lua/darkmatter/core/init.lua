local M = {}

function M.setup_neovide()
    require("darkmatter.core.neovide")
end

function M.setup_keymaps()
    require("darkmatter.core.keymaps")
end

function M.setup_options()
    require("darkmatter.core.options")
end

M.lazy_config = require("darkmatter.core.lazy")

return M
