vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- vim.keymap.set("n", "<C-/>", "I//<C-c>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>e", ":lua vim.diagnostic.open_float()<cr>")
vim.keymap.set("n", "<leader>t", ":lua vim.lsp.buf.code_action()<cr>")

vim.keymap.set("v", "<C-i>", "<C-a>")
vim.keymap.set("v", "g<C-i>", "g<C-a>")
