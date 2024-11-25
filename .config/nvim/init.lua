vim.opt.termguicolors = true
require("config.lazy")
require("colorizer").setup()
vim.opt.completeopt = { "menuone", "noselect", "noinsert", "popup" }
vim.opt.mouse = ""
vim.opt.number = true
vim.opt.wrap = false
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true
vim.opt.syntax = "enable"
vim.opt.scrolloff = 8
vim.opt.swapfile = false
vim.opt.hlsearch = false

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-n>", vim.cmd.Ex)
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>")
