-- lualine.lua
-- Author: Shavak Sinanan <shavak@gmail.com>

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "gruvbox"
			}
		})
	end
}
