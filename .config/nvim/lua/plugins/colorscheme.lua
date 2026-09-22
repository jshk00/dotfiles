local tokyonight = {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("tokyonight")
	end,
	config = function()
		require("tokyonight").setup({
			on_highlights = function(hl, c)
				hl.TelescopePromptBorder = {
					fg = c.blue1,
				}
			end,
			style = "moon",
			styles = {
				comments = { italic = false },
				keywords = { italic = false },
				functions = { italic = false },
				variables = { italic = false },
			},
		})
	end,
}

local onedark = {
	"navarasu/onedark.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("onedark").setup({
			style = "darker",
		})
		require("onedark").load()
	end,
}

local catppuccin = {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("catppuccin-nvim")
	end,
	config = function()
		require("catppuccin").setup({
			transparent_background = false,
			term_colors = false,
			no_bold = true,
			no_italic = true,
			flavour = "mocha",
			default_integrations = true,
		})
	end,
}

local gruvbox = {
	"sainnhe/gruvbox-material",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.gruvbox_material_enable_italic = false
		vim.g.gruvbox_material_background = "hard"
		vim.cmd.colorscheme("gruvbox-material")
	end,
}

local kanagawa = {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("kanagawa")
	end,
	config = function()
		require("kanagawa").setup({
			compile = false, -- enable compiling the colorscheme
			undercurl = true, -- enable undercurls
			commentStyle = { italic = false },
			functionStyle = { italic = false },
			keywordStyle = { italic = false },
			statementStyle = { bold = false },
			transparent = false, -- do not set background color
			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
			terminalColors = true, -- define vim.g.terminal_color_{0,17}
			theme = "wave", -- Load "wave" theme
		})
	end,
}

local schemes = {
	tokyonight = tokyonight,
	gruvbox = gruvbox,
	catppuccin = catppuccin,
	onedark = onedark,
	kanagawa = kanagawa,
}

return schemes.catppuccin
