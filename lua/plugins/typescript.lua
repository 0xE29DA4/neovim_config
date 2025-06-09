-- ~/.config/nvim/lua/plugins/typescript.lua
return {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          tsserver = {
            init_options = {
              preferences = {
                importModuleSpecifierPreference = "projectRelative"
              }
            }
          }
        }
      }
    }
  }