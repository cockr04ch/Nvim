return {
  -- Syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "vim", "vimdoc" },
        auto_install = true,
        highlight = {
          enable = true,
        },
      })
    end,
  },
}