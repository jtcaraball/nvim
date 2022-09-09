-- Harpoon keybinds

function map(mode, shrct, cmd)
  vim.keymap.set(mode, shrct, cmd, { noremap = true, silent = true})
end

function nmap(shrct, cmd)
  map('n', shrct, cmd)
end

-- Create marks
nmap('<a-a>', ':lua require("harpoon.mark").add_file()<CR>')
-- Toggle menu
nmap('<a-t>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
-- Go to mark
nmap('<a-h>', ':lua require("harpoon.ui").nav_file(1)<CR>')
nmap('<a-j>', ':lua require("harpoon.ui").nav_file(2)<CR>')
nmap('<a-k>', ':lua require("harpoon.ui").nav_file(3)<CR>')
nmap('<a-l>', ':lua require("harpoon.ui").nav_file(4)<CR>')
