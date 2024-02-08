return {
	'nvim-treesitter/nvim-treesitter',

	build = ':TSUpdate',

	config = function()
		require('nvim-treesitter.configs').setup({
			ensure_installed = { "c", "lua", "rust", "ruby", "vim", "html", "typescript", "javascript" },

			sync_install = false,
			auto_install = true,

			-- for syntax-highlight, instead of regular expressions, use tree-sitter:
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},

			indent = {
				enable = true,
			},
		})
	end,
}
