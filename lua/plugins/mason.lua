return{
  "mason-org/mason.nvim",
  keys = { {"<leader>ms", "<cmd>Mason<cr>"} },
  opts = {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
      }
    }
  }
}
