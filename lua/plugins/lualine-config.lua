require('lualine').setup {
  options = {
    icons_enabled = true,
    -- theme = 'modus-vivendi',
    theme = 'catppuccin',
		globalstatus = true,
    component_separators = {left = '🭦🭀', right = '/'},
    -- component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    -- component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    -- section_separators = {left = '', right = ''},
    section_separators = {left = '🭀', right = '🭋'},
    disabled_filetypes = {'NvimTree'},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
			'branch',
			{'filename', file_status = false, path = 1}
		},
    lualine_c = {'diagnostics'},
    lualine_x = {'diff'},
    lualine_y = {'filetype'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
