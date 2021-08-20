
local key_mapper = function(mode, key, result, opts)
	local options = {noremap = true, silent = true}
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
  vim.api.nvim_set_keymap(mode, key, result, options)
end

local opt = {}

local load_mapping = function()

	-- set leader key
  key_mapper('n','<Space>','<nop>',opt)
  vim.g.mapleader = " "

	-- disable arrow keys
	key_mapper('', '<up>', '<nop>', opt)
	key_mapper('', '<down>', '<nop>', opt)
	key_mapper('', '<left>', '<nop>', opt)
	key_mapper('', '<right>', '<nop>', opt)

	-- set jk or kj as ESC in insert mode 
	key_mapper('i', 'jk', '<ESC>', opt)
	key_mapper('i', 'kj', '<ESC>', opt)

	-- use Tab and S-Tab as C-N and C-P
	-- key_mapper('i', '<tab>', 'pumvisible() ? "\<C-n>" : "\<Tab>"', {expr = true})
	-- key_mapper('i', '<S-tab>', 'pumvisible() ? "\<C-p>" : "\<S-Tab>"', {expr = true})

	-- Tab in normal mode will move to next buffer S-Tab will move back
	key_mapper('n', '<TAB>', ':bnext<CR>', opt)
	key_mapper('n', '<S-TAB>', ':bprevious<CR>', opt)

	-- Insert mode navigation
	-- key_mapper('i', '<C-l>', '<Right>', opt)
	-- key_mapper('i', '<C-h>', '<Left>', opt)
	-- key_mapper('i', '<C-a>', '<ESC>^i', opt)
	-- key_mapper('i', '<C-e>', '<End>', opt)
	
	-- run python file
	-- vim.cmd [[autocmd FileType python nnoremap <buffer> <C-i> :!python % <CR>]]
	-- key_mapper('n', '<C-i>', ':!python3 % <CR>', {buffer = true})
end

load_mapping()
