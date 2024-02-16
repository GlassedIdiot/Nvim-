local M = {
	"Pocco81/auto-save.nvim",
	config = function()
		require("auto-save").setup({})
		vim.api.nvim_set_keymap("n", "<leader>of", ":ASToggle<CR>", {})
	end,
}
return M
