-- ~/.config/nvim/lua/plugins/cpp.lua
return {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          clangd = {
            cmd = { "clangd", "--background-index", "--clang-tidy" },
            -- 项目级配置（需生成 compile_commands.json）
            init_options = { fallbackFlags = { "-std=c++20" } }
          }
        }
      }
    }
  }