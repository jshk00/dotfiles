return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		local langs = {
			"python",
			"rust",
			"javascript",
			"bash",
			"c",
			"html",
			"lua",
			"luadoc",
			"markdown",
			"markdown_inline",
			"vim",
			"vimdoc",
			"go",
			"toml",
			"dockerfile",
			"json",
			"sql",
			"yaml",
			"make",
			"csv",
		}
		require("nvim-treesitter").install(langs)
		vim.treesitter.language.register("bash", "zsh")
		vim.api.nvim_create_autocmd("FileType", {
			pattern = langs,
			callback = function()
				vim.treesitter.start()
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
