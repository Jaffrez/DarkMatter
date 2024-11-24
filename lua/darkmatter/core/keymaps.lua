-- clean existing keymaps
require("darkmatter.utils").clean_keymaps()

-- leader key
vim.g.mapleader = " "

local keymaps = {
    normal = {
	-- window movement
        ["<C-h>"] = "<C-w>h",
        ["<C-j>"] = "<C-w>j",
        ["<C-k>"] = "<C-w>k",
        ["<C-l>"] = "<C-w>l",
	-- split window
	["sv"] = ":vsp<CR>",
        ["sh"] = ":sp<CR>",
	-- window management
	["sc"] = "<C-w>c",
        ["so"] = "<C-w>o",
	
	["<ESC>"] = ":noh<CR>",
    },
    insert = {
        ["jj"] = "<ESC>",
    },
    visual = {
        -- indent
        [">"] = "<gv",
        [">"] = ">gv", 
    },
    terminal = {},
    visual_block = {
        ["<A-j>"] = ":m '>+1<CR>gv-gv",
        ["<A-k>"] = ":m '<-2<CR>gv-gv", 
    },
    command = {},
}

local trans_mode = {
    normal = 'n',
    insert = 'i',
    visual = 'v',
    terminal = 't',
    visual = 'v',
    visual_block = 'x',
    command = 'c',
}

local opt = { noremap = true, silent = true }

for k, v in pairs(keymaps) do
    local mode = trans_mode[k]

    for key, binding in pairs(v) do
        vim.api.nvim_set_keymap(mode, key, binding, opt)
    end
end
