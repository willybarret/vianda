return {
  "m4xshen/hardtime.nvim",
  lazy = false,
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {
    disable_mouse = false,
    restricted_keys = {
      ["h"] = false,
      ["j"] = false,
      ["k"] = false,
      ["l"] = false,
    },
  },
}
