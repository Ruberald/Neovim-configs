require("config.remap")
require("config.lazy")

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.scrolloff = 8

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.cmd([[colorscheme retrobox]])
vim.cmd([[highlight Pmenu ctermbg=black ctermfg=white]])

