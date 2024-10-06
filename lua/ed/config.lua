vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


-- config lazy.nvim
require("config.lazy")

-- add transparent background
require("catppuccin").setup({
    transparent_background = true, -- disables setting the background color.
})

-- set relative numbers side bar
vim.opt.relativenumber = true
vim.opt.number = true

-- ignore case in search
vim.opt.ignorecase = true

-- singcolumn
vim.opt.signcolumn = 'yes'

-- minimal number of lines below and above
vim.opt.scrolloff = 8

-- set color theme
vim.cmd.colorscheme "catppuccin-mocha"

vim.keymap.set('n', "<leader>pv", vim.cmd.Ex)

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.updatetime = 250

vim.keymap.set("x", "<leader>p", "\"_dP")


