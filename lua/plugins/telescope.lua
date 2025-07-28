return {
  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { '<leader>?', require('telescope.builtin').oldfiles, desc = '[?] Find recently opened files' },
      { '<leader><space>', require('telescope.builtin').buffers, desc = '[ ] Find existing buffers' },
      { '<leader>/', function()
        require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, desc = '[/] Fuzzily search in current buffer' },
      { '<leader>gf', require('telescope.builtin').git_files, desc = 'Search [G]it [F]iles' },
      { '<leader>sf', require('telescope.builtin').find_files, desc = '[S]earch [F]iles' },
      { '<leader>sh', require('telescope.builtin').help_tags, desc = '[S]earch [H]elp' },
      { '<leader>sw', require('telescope.builtin').grep_string, desc = '[S]earch current [W]ord' },
      { '<leader>sg', require('telescope.builtin').live_grep, desc = '[S]earch by [G]rep' },
      { '<leader>sd', require('telescope.builtin').diagnostics, desc = '[S]earch [D]iagnostics' },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<C-u>"] = false,
              ["<C-d>"] = false,
            },
          },
        },
      })
      
      -- Enable telescope fzf native, if installed
      pcall(require('telescope').load_extension, 'fzf')
    end,
  },
}