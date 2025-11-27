require("config")

-- Añade el binario de Mason al PATH automáticamente
vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH
