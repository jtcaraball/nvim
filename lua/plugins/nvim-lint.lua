local lint = require("lint")

-- Linters

lint.linters_by_ft = {
	go = { "golangcilint" },
}

-- Linters customisation

local golangcilint = lint.linters.golangcilint
golangcilint.args = {
	'run',
	-- My params: start
	'--enable',
	'gofumpt',
	'gosec',
	-- My params: end
    '--out-format',
    'json',
    function()
		return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":h")
    end
}

-- Auto commands

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
	group = lint_augroup,
	callback = function()
		lint.try_lint()
	end,
})
