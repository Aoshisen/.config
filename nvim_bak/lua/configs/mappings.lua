-- @see https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/mappings.lua
-- 导入nvchad 默认的mapping 配置
require "nvchad.mappings"

-- surround.nvim 的默认键位
require("nvim-surround").setup {
  -- Configuration here, or leave empty to use defaults
}

-- add yours here
local map = vim.keymap.set

-- normal key binding
map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

--lazygit
map("n", "<leader>lg", "<Cmd>LazyGit<cr>", { desc = "custom LazyGit" })

--custom
map("n", "J", "5j", { desc = "custom J for 5j" })
map("n", "K", "5k", { desc = "custom K for 5k" })
map("n", "H", "^", { desc = "custom H to jump to first word" })
map("n", "L", "$", { desc = "custom L to jump to last word" })

-- 设置快速跳转buffer
for i = 1, 9, 1 do
  map("n", string.format("<C-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end, { desc = string.format("custom buffer <C-%s> to jump to buffer %s", i, i) })
end

--设置hop 快速跳转的快捷键
map("n", "<leader><leader>f", "<Cmd>HopWord<Cr>", {desc = "custom  <leader><leader>f to search Word by HopWord"})

-- insert key binding
map("i", "jj", "<ESC>", { desc = "custom jj for esc" })

