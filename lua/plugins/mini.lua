return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function ()
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
 items = {}, footer = "" })
		require("mini.tabline").setup()
	end
}
