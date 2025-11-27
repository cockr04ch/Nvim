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
      { "<leader>m", ":Neotree toggle<CR>", desc = "Toggle Neo-tree", silent=true }
    },
    config = function()
      -- Configure Neo-tree to appear on the right side
      require("neo-tree").setup({
        close_if_last_window = true,
        window = {
          position = "right",
          width = 30
        },
        -- AÑADE ESTA SECCIÓN para detección automática de cambios
        filesystem = {
          use_libuv_file_watcher = true, -- Detector de cambios del sistema
          follow_current_file = {
            enabled = true, -- Sigue el archivo actual
          },
          refresh = {
            enable = true,    -- Habilita refresco automático
            --interval = 1000,  -- Verifica cambios cada 1 segundo (opcional)
            max_items = 100,  -- Límite de items a monitorear
          },
          -- Opcional: Mapeos adicionales útiles
          window = {
            mappings = {
              ["R"] = "refresh",
              ["a"] = "add",
              ["d"] = "delete",
              ["r"] = "rename",
            }
          }
        },
      })
    end,
  },
}
