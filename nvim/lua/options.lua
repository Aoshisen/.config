require "nvchad.options"

-- add yours here!

local o = vim.o
local opt = vim.opt
o.cursorlineopt = "both" -- to enable cursorline!

-- 定义折叠方式
opt.foldmethod = "indent"
opt.foldlevel = 99

opt.termguicolors = true

