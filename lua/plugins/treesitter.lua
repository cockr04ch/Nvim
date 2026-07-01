return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master", -- Forzar el uso de la rama de compatibilidad
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {"lua"},
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
