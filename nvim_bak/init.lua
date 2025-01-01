-- 设置缓存目录,为nvim data 的位置
vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
-- 设置leader 键为空格
vim.g.mapleader = " "

--定义lazyvim 插件的路径
-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

local defaultspath = vim.g.base46_cache .. "defaults"
local statuslinepath = vim.g.base46_cache .. "statusline"

-- 判断lazyvim 插件是否存在,如果不存在就安装
if not vim.loop.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

-- 在运行环境里面添加lazyvim 的路径,后续代码可以引入lazy.vim 插件的代码
vim.opt.rtp:prepend(lazypath)

-- 加载本地的 配置文件 位与lua/config/lazy.lua
local lazy_config = require "configs.lazy"

-- 通过lazy.vim 内的setup 方法初始化插件,第二个参数是一些nvim 的全局配置
-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    -- plugins 插件
    import = "nvchad.plugins",
    -- 配置项
    config = function()
      require "options"
    end,
  },
  -- 引入插件,来自lua/plugins/init.lua
  { import = "plugins" },
  -- lazy_config 配置
}, lazy_config)

-- load theme
dofile(defaultspath)
dofile(statuslinepath)

require "nvchad.autocmds"

-- keymapping
vim.schedule(function()
  require "configs.mappings"
end)
