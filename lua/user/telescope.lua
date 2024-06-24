-- -- telescope.lua
local M = {
	{
		"nvim-telescope/telescope-ui-select.nvim",
		dependencies = {
			"BurntSushi/ripgrep",
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
					["aerial"] = {
						require("telescope.themes").get_dropdown({}),
					},
					["colorscheme"] = {
						require("telescope.themes").get_dropdown({}),
					},
          
					-- ["trouble"] = {
					-- 	require("telescope.themes").get_dropdown({}),
					-- },
				},
			})
      local actions = require("telescope.actions")
      -- local open_with_trouble = require("trouble.sources.telescope").open
      --
      --   require("telescope").setup({
      --       defaults = {
      --           mappings = {
      --               i = { ["<c-t>"] = open_with_trouble },
      --               n = { ["<c-t>"] = open_with_trouble },
      --           },
      --       },
      --   })
			local builtin = require("telescope.builtin")
			local keymap = vim.keymap.set
			keymap("n", "<leader>ff", builtin.find_files, {})
			keymap("n", "<leader>B", builtin.buffers, {})
			keymap("n", "<leader>fg", builtin.live_grep, {})
			keymap("n", "<leader>cf", builtin.current_buffer_fuzzy_find, {})
			keymap("n", "<leader>fb", builtin.buffers, {})
			keymap("n", "<leader>ch", builtin.colorscheme, {}) 
      keymap("n", "<leader>af", "<cmd>Telescope aerial<CR>", {}) 
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("aerial")
    end,
	},
}

return M
