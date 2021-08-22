-- easy setup here
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- CONTENTS                                                   VIM CONTENTS -- 
-- Options setup                                                 s-options --
-- Mapping setup                                                 s-mapping --
-- Plugin setup                                                   s-plugin --
-- Lsp language setup                                                s-lsp --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

local usr_setup = {

  -- users options setup                                      -- s-options
  options = {
    -- theme setting                                          -- opt-theme
    theme_options =	'colorscheme gruvbox',
    theme_statusline = 'gruvbox_material',  -- https://github.com/hoob3rt/lualine.nvim/blob/master/THEMES.md

    -- global options for all filetype setting with vim.opt   -- opt-global
    global_options = {
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

      -- backups
      -- undodir 				= '$HOME/nvim/undodir'; -- This is default dir
      undofile 				= true;
      backupskip     	= "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim";
      backupdir       = vim.fn.stdpath('config') ..'/backupdir';
      backup 					= false;
      writebackup			= false;
      swapfile 				= false;    -- same as backup

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
  },
  
  -- users mapping setup                                      -- s-mapping
  mapping = {
    -- TODO
  },

  -- users plugin setup                                       -- s-plugin
  plugin = {
    -- TODO
  },

  -- Lsp language setup                                       -- s-lsp
  lsp = {
    -- TODO    
  }
}

return usr_setup
