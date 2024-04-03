require("conform").setup({
	formatters_by_ft = {
		go = { "gofumpt" },
		markdown = { "prettier" },
	},
})

vim.keymap.set("n", "<leader>cf", ":lua require'conform'.format()<CR>")
