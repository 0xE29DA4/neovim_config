-- ~/.config/nvim/lua/plugins/python.lua
return {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          pyright = {
            settings = {
              python = {
                analysis = {
                  typeCheckingMode = "basic",
                  autoSearchPaths = true
                }
              }
            }
          }
        }
      }
    }
  }