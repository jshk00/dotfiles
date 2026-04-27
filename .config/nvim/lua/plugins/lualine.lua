return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					"branch",
					"diff",
					{
						"diagnostics",
						sources = { "nvim_diagnostic", "nvim_lsp", "vim_lsp" },
					},
				},
				lualine_c = {
					{
						"filename",
						symbols = {
							modified = "●",
							readonly = "󰞇 ",
						},
					},
					-- {
					-- 	function()
					-- 		local reg = vim.fn.reg_recording()
					-- 		if reg == "" then
					-- 			return ""
					-- 		end
					-- 		return "recording @" .. reg
					-- 	end,
					-- 	color = { fg = "#ff9e64" },
					-- },
				},
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "filesize" },
				lualine_z = { "location" },
			},
		})
	end,
}
