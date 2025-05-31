require("config.remap")
require("config.lazy")
require("config.lsp")
require("config.cmp")

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

require'nvim-treesitter.parsers'.get_parser_configs().pogberry = {
    install_info = {
        url = "~/.config/nvim/parser/pogberry.so",
        files = {"src/parser.c"},
    },
    filetype = "pb",
}

