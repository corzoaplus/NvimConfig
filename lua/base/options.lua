-- Define Kanagawa-inspired highlight groups for each mode
vim.api.nvim_set_hl(0, "StatusLineNormal", { fg = "#1F1F28", bg = "#7E9CD8", bold = true })
vim.api.nvim_set_hl(0, "StatusLineInsert", { fg = "#1F1F28", bg = "#98BB6C", bold = true })
vim.api.nvim_set_hl(0, "StatusLineVisual", { fg = "#1F1F28", bg = "#957FB8", bold = true })
vim.api.nvim_set_hl(0, "StatusLineReplace", { fg = "#1F1F28", bg = "#E46876", bold = true })
vim.api.nvim_set_hl(0, "StatusLineCommand", { fg = "#1F1F28", bg = "#FFA066", bold = true })
vim.api.nvim_set_hl(0, "StatusLineDefault", { fg = "#DCD7BA", bg = "#2A2A37", bold = true })

-- Define color tags for statusline segments
_G.mode_color = function()
	local mode = vim.fn.mode()
	if mode == "n" then
		return "%#StatusLineNormal# NORMAL "
	elseif mode == "i" then
		return "%#StatusLineInsert# INSERT "
	elseif mode == "v" or mode == "V" or mode == "\22" then -- "\22" is ^V (visual block)
		return "%#StatusLineVisual# VISUAL "
	elseif mode == "R" then
		return "%#StatusLineReplace# REPLACE "
	elseif mode == "c" then
		return "%#StatusLineCommand# COMMAND "
	else
		return "%#StatusLineDefault# OTHER "
	end
end

-- Configure the statusline to include mode, filename, and position
vim.opt.statusline = "%{%v:lua.mode_color()%}%#StatusLineDefault# %f %=%l,%c %p%%"

-- Basic settings
vim.g.mapleader = " " -- Set <Space> as the leader key
vim.o.foldmethod = "indent" -- Use indentation to define folds (try "syntax" as an alternative)
vim.o.foldlevel = 99 -- Open all folds by default
vim.o.foldenable = true -- Enable code folding
vim.o.wrap = true -- Enable line wrapping
vim.opt.linebreak = true -- Break lines at word boundaries when wrapping
vim.opt.breakindent = true -- Keep indentation on wrapped lines
vim.wo.relativenumber = true -- Show relative line numbers
vim.wo.number = true -- Show absolute line number on the current line
vim.opt.scrolloff = 8 -- Keep at least 8 lines above and below the cursor
vim.opt.sidescrolloff = 8 -- Keep at least 8 columns to the left and right of the cursor
vim.opt.ignorecase = true -- Ignore case in search patterns
vim.opt.smartcase = true -- Override 'ignorecase' if search pattern contains uppercase
vim.opt.hlsearch = false -- Don't highlight all matches of the previous search
vim.opt.incsearch = true -- Show matches as you type the search
vim.opt.termguicolors = true -- Enable true color support in the terminal

-- Python-specific formatting
-- vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
-- 	pattern = "*.py", -- Only apply to Python files
-- 	callback = function()
-- 		vim.bo.textwidth = 88 -- Set text width ONLY for the current buffer
-- 		vim.wo.colorcolumn = "88" -- Set color column ONLY for the current window
-- 	end,
-- })
