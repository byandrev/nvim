return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",

	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		require("telescope").setup({
			defaults = {
				file_ignore_patterns = { "node_modules", ".git", "dist", "build", ".next" },
			},
		})

		require('telescope').setup({ file_ignore_patterns = { "node%_modules/.*" } })
		local builtin = require('telescope.builtin')

		vim.keymap.set('n', '<c-p>', builtin.find_files, {})
		vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
		vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
		vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
	end,
}
