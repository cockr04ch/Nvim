local opt = vim.opt

opt.clipboard = vim.env.SSH_CONNECTION and "" or "unnamedplus"
opt.undofile = true
vim.g.autoformat = true
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.ignorecase = true
opt.smartcase = true
