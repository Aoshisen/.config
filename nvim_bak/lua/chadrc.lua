-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}
-- local utils = require "utils"
local headers = require "data.headers"
M.ui = {
  theme = "github_dark",
  transparency = true,
  statusline = {
    separator_style = "arrow",
  },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    NvDashAscii = {
      fg = "blue",
      bg = "NONE",
    },

    NvDashButtons = {
      bg = "NONE",
    },
  },
  nvdash = {
    -- header = utils.getHeader(),
    load_on_startup = true,
    header = headers["vscode"],
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f r", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Find Projects", "Spc f p", "Telescope projects" },
      { "  Themes", "Spc f t", "Telescope themes" },
      { "  Mappings", "Spc n c", "NvCheatsheet" },
    },
  },
  tabufline={
    order = { "treeOffset", "buffers", "tabs" },
  }
}

return M
