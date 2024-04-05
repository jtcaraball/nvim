local dap = require('dap')
local dapui = require('dapui')
local masondap = require('mason-nvim-dap')

-- Mason nvim dap
masondap.setup({
	automatic_setup = true,
	handlers = {},
})

-- DAPUI settings
dapui.setup()
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

-- Mappings
vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>dB", ":lua require'dap'.set_breakpoint()<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")
vim.keymap.set("n", "<leader>dq", ":lua require'dap'.terminate()<CR>")
