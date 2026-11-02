return {
  -- 1. 下载并安装 github-nvim-theme 插件
  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- 确保在启动时加载
    priority = 1000, -- 最高优先级，保证在其他插件之前加载
    config = function()
      require("github-theme").setup({
        -- 这里可以放入你的自定义配置，不填则使用默认值
      })
    end,
  },

  -- 2. 告诉 LazyVim 将其设置为默认主题
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark", -- 默认启动的主题样式
    },
  },
}
