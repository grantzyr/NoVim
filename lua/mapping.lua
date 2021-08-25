-- key mapping setup file
local vim = vim
local key_mapper = function(mode, key, result, opts)
	local options = {noremap = true, silent = true}
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
  vim.api.nvim_set_keymap(mode, key, result, options)
end

local opt = {}

local user_keys = require('setup').mapping.user_keys
vim.g.mapleader = require('setup').mapping.leader_key

local user_mapping = function()

  for _,v in pairs(user_keys) do
    key_mapper(v[1], v[2], v[3], v[4])
  end

	-- use Tab and S-Tab as C-N and C-P
	-- key_mapper('i', '<tab>', 'pumvisible() ? "\<C-n>" : "\<Tab>"', {expr = true})
	-- key_mapper('i', '<S-tab>', 'pumvisible() ? "\<C-p>" : "\<S-Tab>"', {expr = true})

	-- run python file
	-- vim.cmd [[autocmd FileType python nnoremap <buffer> <C-i> :!python % <CR>]]
	-- key_mapper('n', '<C-i>', ':!python3 % <CR>', {buffer = true})
end

-- bind keys for plugins
local bl = require('plugins.bufferline').bind_keys  -- bufferline
local ts = require('plugins.telescope').bind_keys  -- telescope
local nt = require('plugins.nvimtree').bind_keys  -- nvim-tree

-- bl: bafferline, ts: telescope, nt: nvim-tree
local bind_list = {bl, ts, nt}

local bind_mapping = function()
  for _,v in pairs(bind_list) do
    for _,k in pairs(v) do
      key_mapper(k[1], k[2], k[3], k[4])
    end
  end
end

user_mapping()
bind_mapping()
