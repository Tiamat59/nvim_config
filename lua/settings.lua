local utils = require('utils')

local cmd = vim.cmd
local indent = 4

cmd 'colorscheme onedark'
-- cmd 'colorscheme tokyonight'
-- vim.g.tokyonight_style = "storm"
-- vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
-- vim.g.tokyonight_colors = { bg = "#282C34" }
cmd 'syntax enable'
cmd 'filetype plugin indent on'
cmd [[set shortmess+=c]]
cmd 'set updatetime=1300'


utils.opt('o', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
utils.opt('o', 'hidden', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', 4 )
utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'clipboard','unnamed,unnamedplus')
utils.opt('o', 'completeopt', 'menuone,noinsert,noselect')
-- utils.opt('o', 'updatetime',1300)
utils.opt('w', 'signcolumn','yes')

-- Lualine
require('lualine').setup{
	options = { 
		theme = 'onedark', 
		icons_enabled = true,
	},
}

-- Highlight on yank
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

