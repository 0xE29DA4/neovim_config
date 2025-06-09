-- 安装 LSP 增强 UI 插件
return {
  { "glepnir/lspsaga.nvim" }, -- 悬浮提示优化
  { "onsails/lspkind.nvim" }, -- 图标美化
  -- 光滑光标
  {
    "gen740/SmoothCursor.nvim",
    event = "VeryLazy",
    config = function()
      require("smoothcursor").setup({
        type = "default", -- Cursor movement calculation method, choose "default", "exp" (exponential) or "matrix".

        cursor = "", -- Cursor shape (requires Nerd Font). Disabled in fancy mode.
        texthl = "SmoothCursor", -- Highlight group. Default is { bg = nil, fg = "#FFD400" }. Disabled in fancy mode.
        linehl = nil, -- Highlights the line under the cursor, similar to 'cursorline'. "CursorLine" is recommended. Disabled in fancy mode.

        fancy = {
          enable = true, -- enable fancy mode
          head = { cursor = "▷", texthl = "SmoothCursor", linehl = nil }, -- false to disable fancy head
          body = {
            { cursor = "󰝥", texthl = "SmoothCursorRed" },
            { cursor = "󰝥", texthl = "SmoothCursorOrange" },
            { cursor = "●", texthl = "SmoothCursorYellow" },
            { cursor = "●", texthl = "SmoothCursorGreen" },
            { cursor = "•", texthl = "SmoothCursorAqua" },
            { cursor = ".", texthl = "SmoothCursorBlue" },
            { cursor = ".", texthl = "SmoothCursorPurple" },
          },
          tail = { cursor = nil, texthl = "SmoothCursor" }, -- false to disable fancy tail
        },

        matrix = { -- Loaded when 'type' is set to "matrix"
          head = {
            -- Picks a random character from this list for the cursor text
            cursor = require("smoothcursor.matrix_chars"),
            -- Picks a random highlight from this list for the cursor text
            texthl = {
              "SmoothCursor",
            },
            linehl = nil, -- No line highlight for the head
          },
          body = {
            length = 6, -- Specifies the length of the cursor body
            -- Picks a random character from this list for the cursor body text
            cursor = require("smoothcursor.matrix_chars"),
            -- Picks a random highlight from this list for each segment of the cursor body
            texthl = {
              "SmoothCursorGreen",
            },
          },
          tail = {
            -- Picks a random character from this list for the cursor tail (if any)
            cursor = nil,
            -- Picks a random highlight from this list for the cursor tail
            texthl = {
              "SmoothCursor",
            },
          },
          unstop = false, -- Determines if the cursor should stop or not (false means it will stop)
        },

        autostart = true, -- Automatically start SmoothCursor
        always_redraw = true, -- Redraw the screen on each update
        flyin_effect = nil, -- Choose "bottom" or "top" for flying effect
        speed = 25, -- Max speed is 100 to stick with your current position
        intervals = 35, -- Update intervals in milliseconds
        priority = 10, -- Set marker priority
        timeout = 3000, -- Timeout for animations in milliseconds
        threshold = 3, -- Animate only if cursor moves more than this many lines
        max_threshold = 120, -- If you move more than this many lines, don't animate (if `nil`, deactivate check)
        disable_float_win = false, -- Disable in floating windows
        enabled_filetypes = nil, -- Enable only for specific file types, e.g., { "lua", "vim" }
        disabled_filetypes = nil, -- Disable for these file types, ignored if enabled_filetypes is set. e.g., { "TelescopePrompt", "NvimTree" }
        -- Show the position of the latest input mode positions.
        -- A value of "enter" means the position will be updated when entering the mode.
        -- A value of "leave" means the position will be updated when leaving the mode.
        -- `nil` = disabled
        show_last_positions = nil,
      })
    end,
  },
  -- 平滑滚动

  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require("neoscroll").setup({
        easing_function = "quadratic", -- 平滑过渡函数类型
      })

      -- 可选绑定键位
      local t = {}
      t["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "150" } }
      t["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "150" } }
      t["<C-b>"] = { "scroll", { "-vim.api.nvim_win_get_height(0)", "true", "250" } }
      t["<C-f>"] = { "scroll", { "vim.api.nvim_win_get_height(0)", "true", "250" } }
      t["<C-y>"] = { "scroll", { "-0.10", "false", "100" } }
      t["<C-e>"] = { "scroll", { "0.10", "false", "100" } }

      require("neoscroll.config").set_mappings(t)
    end,
  },
}
