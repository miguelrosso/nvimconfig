vim.g.mapleader = " "

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "no"

vim.opt.updatetime = 50

vim.opt.wrap = true

vim.g.loaded_newtrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.guicursor = "i:block"
vim.opt.termguicolors = true

vim.opt.cursorline = true

vim.g.monochrome_italic_comments = 1

vim.opt.list = true
vim.opt.listchars="space:·,trail:·,tab:>·"
