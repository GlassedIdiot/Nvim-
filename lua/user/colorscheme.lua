local M = {
	{
		"catppuccin/nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = false,
	},
}

function M.setup()
	-- Set the color scheme
	vim.cmd("colorscheme catppuccin-mocha")
end

-- Create an autocommand that calls M.setup when Neovim starts
vim.api.nvim_create_autocmd("VimEnter", {
	callback = M.setup,
})

return M
