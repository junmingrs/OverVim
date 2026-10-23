return {
  "echasnovski/mini.nvim",
  version = "*",
  config = function()
    require("mini.ai").setup()
    require("mini.pairs").setup()
    require("mini.files").setup()
    require("mini.surround").setup()
    require("mini.starter").setup({
      header = [[
 ██████╗ ██╗   ██╗███████╗██████╗ ██╗   ██╗██╗███╗   ███╗
██╔═══██╗██║   ██║██╔════╝██╔══██╗██║   ██║██║████╗ ████║
██║   ██║██║   ██║█████╗  ██████╔╝██║   ██║██║██╔████╔██║
██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗╚██╗ ██╔╝██║██║╚██╔╝██║
╚██████╔╝ ╚████╔╝ ███████╗██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║
 ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
 ]],
      items = {
        { name = "OverMotion",    action = "OverMotion",                                                             section = "Workshop" },
        { name = "OverClient",    action = "OverClient",                                                             section = "Workshop" },
        { name = "Find File",     action = "Telescope find_files",                                                   section = "Workshop" },
        { name = "Open Activity", action = function() vim.cmd.edit(vim.fn.stdpath("config") .. "/activity.py") end,  section = "Workshop" },
      },
      footer = ""
    })
    require("mini.tabline").setup()
  end
}
