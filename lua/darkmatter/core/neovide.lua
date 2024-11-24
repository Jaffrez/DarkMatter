-- check for neovide and load config
if vim.g.neovide then
    -- fonts
    vim.opt.guifont = "JetbrainsMono Nerd Font: h14"
    -- display
    vim.g.neovide_text_gamma = 0.8
    vim.g.neovide_text_contrast = 0.1
    vim.g.neovide_hide_mouse_when_typing = true
    vim.g.neovide_refresh_rate = 240
    vim.g.neovide_refresh_rare_idle = 30
end
