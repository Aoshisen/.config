-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
local opt = vim.opt

-- ===== 行号 =====
opt.number = true -- 显示绝对行号
opt.relativenumber = true -- 显示相对行号

-- ===== Leader 键 =====
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- ===== 系统剪贴板 =====
opt.clipboard = "unnamedplus"
