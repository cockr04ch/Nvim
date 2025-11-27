-- Settings for Neovim's UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.clipboard = vim.env.SSH_CONNECTION and "" or "unnamedplus"
vim.opt.cursorline = true
