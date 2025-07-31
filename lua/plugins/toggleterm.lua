return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { "<leader>t", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    },
    config = function()
      require("toggleterm").setup({
        -- Aquí puedes añadir más configuración de toggleterm en el futuro
      })

      -- Esta función crea el atajo de teclado para el modo terminal
      function _G.set_terminal_keymaps()
        vim.api.nvim_buf_set_keymap(0, 't', '<leader>t', "<cmd>ToggleTerm<cr>", {noremap = true, silent = true})
      end

      -- Ejecuta la función cuando se abra una terminal
      vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
    end,
  },
}
