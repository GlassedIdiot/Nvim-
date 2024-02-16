local M = {
	"stevearc/aerial.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
}

function M.config()
	require("aerial").setup({
		on_attach = function(bufnr)
			local keymap = vim.keymap.set
			keymap("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
			keymap("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
		end,

		layout = {
			max_width = { 40, 0.5 },
			width = 30,
			min_width = 10,
			default_direction = "prefer_left",
		},
		float = {
			max_width = { 25, 0.8 },
			width = 20,
			default_direction = "prefer_right",
		},
	})
end

return M
