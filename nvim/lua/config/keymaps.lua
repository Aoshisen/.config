-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- ===== Insert 模式 =====
map("i", "jj", "<Esc>", { desc = "退出插入模式" })

-- ===== Normal 模式 =====
map("n", "H", "^", { desc = "跳到行首（第一个非空字符）" })
map("n", "L", "$", { desc = "跳到行尾" })

-- 将 gh 映射为原本 K 的功能（LSP 悬停提示）
map("n", "gh", vim.lsp.buf.hover, { desc = "显示悬停提示" })

-- ===== Visual 模式 =====
map({ "x", "v" }, "J", "5j", { desc = "向下移动5行" })
map({ "x", "v" }, "K", "5k", { desc = "向上移动5行" })
map({ "x", "v" }, "H", "^", { desc = "跳到行首" })
map({ "x", "v" }, "L", "$", { desc = "跳到行尾" })

-- ===== Terminal 模式 =====
