return {
  {
    "rebelot/kanagawa.nvim",
    config = function()
      vim.cmd.colorscheme("kanagawa")
    end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "wtfox/jellybeans.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = ...,
  }
}
