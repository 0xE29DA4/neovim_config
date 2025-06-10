-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 显示行号、相对行号
vim.opt.number = true
vim.opt.relativenumber = true

-- 高亮当前行
vim.opt.cursorline = true

-- 启用鼠标支持（移动光标、选择文本等）
vim.opt.mouse = "a"

-- 缩进设置
vim.opt.tabstop = 4 -- 一个 Tab 显示为 4 空格
vim.opt.shiftwidth = 4 -- 自动缩进时每级缩进 4 空格
vim.opt.expandtab = true -- 将 Tab 转换为空格

-- 自动换行与折行
vim.opt.wrap = true -- 不自动折行
vim.opt.linebreak = true -- 在单词边界处折行

-- 搜索时忽略大小写，除非包含大写字母
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 启用系统剪贴板
-- wayland 平台需要安装 wl-clipboard
vim.opt.clipboard = "unnamedplus"

-- 自动读取外部修改的文件
vim.opt.autoread = true
