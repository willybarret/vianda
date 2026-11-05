require("config.lazy")

if vim.g.neovide == true then
  vim.g.neovide_fullscreen = false
  vim.g.neovide_opacity = 0.6
  vim.g.neovide_window_blurred = true
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_smooth_blink = true
  vim.g.neovide_cursor_vfx_mode = "ripple"

  vim.o.guicursor = table.concat({
    [[n-v:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,c:ver25]],
    [[a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor]],
    [[sm:block-blinkwait175-blinkoff150-blinkon175]],
  }, ",")

  -- vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
  vim.g.neovide_scale_factor = 1.0
  vim.api.nvim_set_keymap(
    "n",
    "<C-+>",
    ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>",
    { silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-->",
    ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>",
    { silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-=>",
    ":lua vim.g.neovide_scale_factor = 1<CR>", --
    { silent = true }
  )
  vim.keymap.set(
    { "n", "v", "s", "x", "o", "i", "l", "c", "t" },
    "<C-S-v>",
    function()
      vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
    end, --
    { noremap = true, silent = true }
  )
end
