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
    config = function()
      -- Configure Neo-tree to appear on the right side
      require("neo-tree").setup({
        window = {
          position = "right",
          width = 30
        },
      })
      
      -- Set up keybinding for <leader>e to toggle Neo-tree
      vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle Neo-tree" })
    end,
  },
}
