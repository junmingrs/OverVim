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
    -- vim.cmd.colorscheme("catppuccin")
  },
  {
    "wtfox/jellybeans.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    -- vim.cmd.colorscheme("jellybeans")
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = ...,
    -- vim.cmd.colorscheme("gruvbox")
  }
}
