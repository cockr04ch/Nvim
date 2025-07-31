return {
  -- File explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<leader>e", ":Neotree toggle<CR>", desc = "Toggle Neo-tree" }
    },
    config = function()
      -- Configure Neo-tree to appear on the right side
      require("neo-tree").setup({
        close_if_last_window = true,
        window = {
          position = "right",
          width = 30
        },
      })
    end,
  },
}
