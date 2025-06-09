-- ~/.config/nvim/lua/plugins/venv-selector.lua
return {
  "linux-cultist/venv-selector.nvim",
  dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
  opts = {
    search_venv_managers = false,
    search = true,
    name = { ".venv", "venv" },
  },
  event = "BufReadPost",
}
