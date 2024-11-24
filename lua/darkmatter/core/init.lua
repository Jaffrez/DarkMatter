local M = {
    setup = {},
    config = {},
}

function M.setup.neovide()
    require("darkmatter.core.neovide")
end

function M.setup.keymaps()
    require("darkmatter.core.keymaps")
end

function M.setup.options()
    require("darkmatter.core.options")
end

M.config.lazy = require("darkmatter.core.lazy")
M.config.icons = require("darkmatter.core.icons")

return M
