
local alpha = function()
  return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
end

if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here
    -- vim.print(vim.g.neovide_version,"hello, neovide")
    -- vim.g.neovide_padding_top = 0
    -- vim.g.neovide_padding_bottom = 0
    -- vim.g.neovide_padding_right = 0
    -- vim.g.neovide_padding_left = 0
  ---- Helper function for transparency formatting
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  -- Railgun|Torpedo|Pixiedust|Sonic Boom|Ripple |Wireframe
vim.g.neovide_cursor_vfx_mode = "sonicboom"
vim.g.neovide_transparency = 0.0
vim.g.transparency = 0.8
vim.g.neovide_background_color = "#0f1117" .. alpha()
-- Title Bar Color (Currently Windows only)
-- vim.g.neovide_title_background_color = string.format(
--     "%x",
--     vim.api.nvim_get_hl(0, {id=vim.api.nvim_get_hl_id_by_name("Normal")}).bg
-- )
-- vim.g.neovide_title_text_color = "pink"

  vim.g.neovide_window_blurred = true

  vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0

  vim.g.neovide_floating_shadow = true
vim.g.neovide_floating_z_height = 10
vim.g.neovide_light_angle_degrees = 45
vim.g.neovide_light_radius = 5
  vim.g.neovide_floating_corner_radius = 4.0

  vim.g.neovide_transparency = 0.8
vim.g.neovide_normal_opacity = 0.8
-- macos only 
  vim.g.neovide_show_border = true
vim.g.neovide_input_macos_option_key_is_meta = 'only_left'
  vim.g.neovide_input_ime = true
  vim.g.neovide_cursor_trail_size = 0.8
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animate_command_line = false
end
