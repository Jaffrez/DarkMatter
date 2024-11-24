local path_sep = (vim.uv.os_uname().version:match "Windows" and {"\\"} or {"/"} )[1]

function _G.join_paths(...)
    local result = table.concat({...}, path_sep)
    return result
end

local M = {}

M.clean_keymaps = require("darkmatter.utils.clean").clean_keymaps

return M
