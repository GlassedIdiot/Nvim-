local M = {
	"olexsmir/gopher.nvim",
	ft = "go",
}

function M.config()
	local gopher = require("gopher")

	gopher.setup({

		commands = {
			go = "go",
			gomodifytags = "gomodifytags",
			gotests = "~/go/bin/gotests", -- also you can set custom command path
			impl = "impl",
			iferr = "iferr",
		},
	})
end

function M.build()
	vim.cmd([[silent! GoInstallDeps]])
end

return M
