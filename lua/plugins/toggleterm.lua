return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { "<leader>t", "<cmd>ToggleTerm direction=float<cr>", desc = "Toggle terminal" },
    },
    config = function()
      require("toggleterm").setup({
        direction = "float",
        float_opts = {
          border = "rounded",
          width = 100,
          height = 30,
        },
      })

      -- Mapeo para hacer más fácil cerrar desde dentro de la terminal
      vim.api.nvim_set_keymap('t', '<C-x>', '<C-\\><C-n>:ToggleTerm<CR>', {noremap = true, silent = true})
    end,
  },
}
