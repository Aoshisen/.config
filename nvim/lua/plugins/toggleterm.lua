return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    lazy = false,
    config = function()
      require("toggleterm").setup({
        -- 取消默认的 open_mapping，我们完全使用下面的自定义快捷键
        open_mapping = nil,
        start_in_insert = true,
        insert_mappings = true,
        terminal_mappings = true,
        float_opts = {
          border = "curved",
          winblend = 3,
        },
      })

      -- ==========================================
      -- ✨ 自定义快捷键绑定 (支持普通模式 'n' 和终端模式 't')
      -- ==========================================

      -- 1. 绑定 Alt + i (<M-i>) 触发 1号终端（浮动模式 float）
      vim.keymap.set(
        { "n", "t" },
        "<M-i>",
        "<cmd>1ToggleTerm direction=float<cr>",
        { desc = "Toggle Floating Terminal" }
      )

      -- 2. 绑定 Alt + j (<M-j>) 触发 2号终端（底部横向模式 horizontal）
      -- size = 15 代表底部终端占据 15 行高度
      vim.keymap.set(
        { "n", "t" },
        "<M-j>",
        "<cmd>2ToggleTerm direction=horizontal size=30<cr>",
        { desc = "Toggle Bottom Terminal" }
      )
    end,
  },
}
