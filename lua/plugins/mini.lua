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
        { name = "OverMotion", action = "OverMotion",           section = "Custom" },
        { name = "OverClient", action = "OverClient",           section = "Custom" },
        { name = "Find File",  action = "Telescope find_files", section = "Custom" },
      },
      footer = ""
    })
    require("mini.tabline").setup()
  end
}
