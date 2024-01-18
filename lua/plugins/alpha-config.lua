local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

vim.cmd([[
	hi StartLogo1 guifg=#143F6B
	hi StartLogo2 guifg=#344268
	hi StartLogo3 guifg=#544564
	hi StartLogo4 guifg=#744861
	hi StartLogo5 guifg=#954A5D
	hi StartLogo6 guifg=#B54D5A
	hi StartLogo7 guifg=#D55056
	hi StartLogo8 guifg=#F55353
]])

-- Set header
local header = {
	[[                                                                   ]],
	[[      ████ ██████           █████      ██                    ]],
	[[     ███████████             █████                            ]],
	[[     █████████ ███████████████████ ███   ███████████  ]],
	[[    █████████  ███    █████████████ █████ ██████████████  ]],
	[[   █████████ ██████████ █████████ █████ █████ ████ █████  ]],
	[[ ███████████ ███    ███ █████████ █████ █████ ████ █████ ]],
	[[██████  █████████████████████ ████ █████ █████ ████ ██████]],
}

-- Colorize header
local function colorize_header()
	local lines = {}
	for i, chars in pairs(header) do
		local line = {
			type = "text",
			val = chars,
			opts = {
				hl = "StartLogo" .. i,
				shrink_margin = false,
				position = "center",
			}
		}
		table.insert(lines, line)
	end
	local output = {
		type = "group",
		val = lines,
		opts = { position = "center" }
	}
	return output
end

-- local colored_header = colorize_header()
-- dashboard.section.header.val = header
-- dashboard.section.header = colored_header

-- Set menu
-- dashboard.section.buttons.val = {
local buttons = {
	dashboard.button("e", "	New file" , ":ene <BAR> startinsert <CR>"),
	dashboard.button("t", "	Browse" , ":e .<CR>"),
	dashboard.button("f", "	Find file", ":Telescope find_files <CR>"),
	dashboard.button("l", "	Live grep", ":Telescope live_grep <CR>"),
	dashboard.button("g", "	Git", ":Git <CR> | :wincmd j | :q<CR>"),
	dashboard.button(
		"s",
		"	Settings",
		":cd ~/.config/nvim | :e init.lua <CR>"
	),
	dashboard.button("q", "	Quit NVIM", ":qa<CR>"),
}

-- Send config to alpha
local config = {
	layout = {
		{ type = "padding", val = 10 },
		colorize_header(),
		{ type = "padding", val = 6 },
		{ type = "group", val = buttons, opts = {position = "center"} }
	},
	opts = {
		margin = 5,
	},
}
alpha.setup(config)
