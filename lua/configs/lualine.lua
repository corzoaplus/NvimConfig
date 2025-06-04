return {
	options = {
		icons_enabled = true, -- Enable icons in the statusline
		theme = "auto", -- Automatically choose theme based on Neovim's colorscheme
		component_separators = { left = "", right = "" }, -- Separators between components
		section_separators = { left = "", right = "" }, -- Separators between sections
		disabled_filetypes = { statusline = {}, winbar = {} }, -- Disable the statusline and winbar for specific filetypes
		refresh = { statusline = 1000, tabline = 1000, winbar = 1000 }, -- Refresh every 1000ms
	},
	sections = {
		lualine_a = { "mode" }, -- Show the current mode (normal, insert, visual, etc.)
		lualine_b = { "branch", "diff", "diagnostics" }, -- Show git branch, diff, and diagnostics
		lualine_c = { "filename" }, -- Show the current file's name
		lualine_x = { "encoding", "fileformat", "filetype" }, -- Show file encoding, format, and type
		lualine_y = { "progress" }, -- Show the progress in the current file
		lualine_z = { "location" }, -- Show the cursor's location (line and column)
	},
	inactive_sections = {
		lualine_a = {}, -- No information in section A when inactive
		lualine_b = {}, -- No information in section B when inactive
		lualine_c = { "filename" }, -- Show only the filename when inactive
		lualine_x = { "location" }, -- Show the location (line and column) when inactive
		lualine_y = {}, -- No information in section Y when inactive
		lualine_z = {}, -- No information in section Z when inactive
	},
	extensions = {}, -- You can add extensions here if needed
}
