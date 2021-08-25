-- easy setup here
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- CONTENTS                                                   VIM CONTENTS --
-- Options setup                                                 s-options --
-- Mapping setup                                                 s-mapping --
-- Plugin setup                                                   s-plugin --
-- Lsp language setup                                                s-lsp --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
local global = require('global')

local user_setup = {}
user_setup.options = {}                                       -- s-options

user_setup.options.plugin_options = {

  theme_set = {
    theme_options     =	'gruvbox',
    theme_statusline  = 'gruvbox_material',  -- https://github.com/hoob3rt/lualine.nvim/blob/master/THEMES.md
  },

  plugin_set = {
    lualine           = 'set1',
    bufferline        = 'set1',
    indent_blankline  = 'set1',
    lspconfig         = 'default',
  }
}

user_setup.options.global_options = {
  -- general
  background      = "dark";
  ruler 					= false;    -- Show the line and column number of the cursor position, separated by a comma.
  showmode 				= false;    -- If in Insert, Replace or Visual mode put a message on the last line.
  showmatch       = false;
  showcmd					= false;
  cmdheight 			= 1;        -- The height of cmd.
  laststatus 			= 2;
  splitbelow 			= true;     -- When on, splitting a window will put the new window below the current one.
  splitright 			= true;     -- When on, splitting a window will put the new window right the current one.
  termguicolors		= true;     -- draft off. Enables 24-bit RGB color in the TUI.
  hidden 					= true;     -- When off a buffer is unloaded when it is abandoned.
  mouse 					= "a";      -- draft off. 'a' - all model. enable mouse support.
  syntax 					= "on";
  errorbells 			= false;    -- Ring the bell (beep or screen flash) for error messages.
  visualbell      = false;
  clipboard 			= "unnamedplus";  -- Copy and paste from anywhere.
  ignorecase 			= true;     -- Ignore case when search.
  smartcase 			= true;     -- Override the 'ignorecase' option if the search pattern contains upper case characters.
  smarttab				= true;
  smartindent 		= true;     --	Do smart autoindenting when starting a new line.
  incsearch 			= true;
  shada          	= "!,'300,<50,@100,s10,h";
  completeopt			='menuone,noinsert,noselect';  -- completion: a comma separated list of options for Insert mode completion ins-completion.
  number 					= true;     -- show row number.
  numberwidth 		= 2;        -- set the width of row number column. which draft is 4
  wrap 						= false;    -- everything shows in one line.
  whichwrap 			= "h,l,<,>,[,],~";  -- go to the prev/next line with h,l,<-,-> when cursor reaches end /beginning of the line.
  encoding				= "utf-8";
  -- fileformats		= "unix,mac,dos";
  autoindent 			= true;     -- Copy indent from current line when starting a new line (typing <CR> in Insert mode or when using the "o" or "O" command).
  tabstop 				= 2;        -- Number of spaces that a <Tab> in the file counts for.
  softtabstop 		= 2;        -- Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>.
  shiftwidth 			= 2;        -- Returns the effective value of 'shiftwidth'.
  expandtab 			= true;     -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.  Spaces are used in indents with the '>' and '<' commands and when 'autoindent' is on.
  -- relativenumber = true;   -- Show the line number relative to the line with the cursor in front of each line.
  signcolumn 			= "yes";    -- When and how to draw the signcolumn.

  -- timeout setting
  timeout 				= true;
  ttimeout 				= true;
  timeoutlen 			= 500;      -- default is 1000.
  ttimeoutlen			= 10;
  redrawtime 			= 1500;
  updatetime 			= 200;      -- Faster completion.

  -- others
  -- shortmess:append "sI";   -- disable nvim intro.
  -- breakat 				= ;       -- TODO

}

user_setup.options.bind_options = {
  -- backups
  undodir 				= global.paths.cache_dir .. "undo/";
  undofile 				= true;
  backupskip     	= "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim";
  backupdir       = global.paths.cache_dir .. "backup/";
  backup 					= false;
  writebackup			= false;
  swapfile 				= false;    -- same as backup
}

local opt = {}
-- users mapping setup                                      -- s-mapping
user_setup.mapping = {}
user_setup.mapping.leader_key = " "       -- change the leader key
user_setup.mapping.user_keys = {          -- add the custom key mapping
  -- format: {mode, before, after, opts}

  {'n', '<Space>', '<nop>', opt},

  -- buffer key
  {'n', '<leader>cc<CR>', ':bd', opt},

	-- disable arrow keys
  {'', '<up>', '<nop>', opt},
  {'', '<down>', '<nop>', opt},
  {'', '<left>', '<nop>', opt},
  {'', '<right>', '<nop>', opt},

	-- set jk or kj as ESC in insert mode
  {'i', 'jk', '<ESC>', opt},
  -- {'i', 'kj', '<ESC>', opt},

	-- use Tab and S-Tab as C-N and C-P
	-- {'i', '<tab>', 'pumvisible() ? "\<C-n>" : "\<Tab>"', {expr = true}},
	-- {'i', '<S-tab>', 'pumvisible() ? "\<C-p>" : "\<S-Tab>"', {expr = true}},

	-- Tab in normal mode will move to next buffer S-Tab will move back
  {'n', '<TAB>', ':bnext<CR>', opt},
  {'n', '<S-TAB>', ':bprevious<CR>', opt},
}

  -- Lsp language setup                                       -- s-lsp
user_setup.lsp = {
    -- TODO
}

return user_setup
