return {
  {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin"
    end
  },

  {
    "rose-pine/neovim",
    variant = "auto", -- auto, main, moon, or dawn
    dark_variant = "main", -- main, moon, or dawn
    dim_inactive_windows = false,
    extend_background_behind_borders = true,
  },
}
