local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- ensure that packer is installed
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim "..install_path)
  execute "packadd packer.nvim"
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local packer = require("packer")
local util = require("packer.util")
local use = packer.use
-- local usr_plugin = require("setup").plugin

packer.init({
  package_root = util.join_paths(vim.fn.stdpath("data"), "site", "pack")
})

packer.startup({function()

  -- for name,value in pairs(usr_plugin) do
  --   use {
  --     value.name,
  --     ft = value.ft,
  --     cmd = value.cmd,
  --     event = value.event,
  --     requires = value.requires,
  --     after = value.after,
  --     config = value.config,
  --     run = value.run
  --   }
	-- end
  -- Packer can manage itself - lua
  use {
    "wbthomason/packer.nvim"
    -- event = "VimEnter",
  }

  -- comment - lua
  use {
    "b3nj5m1n/kommentary"

  }

  -- auto add closer - vim
--  use {
--    "9mm/vim-closer"
--  }

  -- highlight the shoutcut keywords
--  use {
--    "machakann/vim-highlightedyank"
--  }

  -- add/delete/replace surroundings of a sandwiched textobject, like (foo), "bar".
--  use {
--    "machakann/vim-sandwich"
--  }

  -- highlight
--  use {
--    "nvim-treesitter/nvim-treesitter"
--  }

  -- theme support live change color
--  use {
--    "tjdevries/colorbuddy.nvim"
--  }

  -- theme
  -- gruvbox8 -- works without true color - vim
  use {
    "lifepillar/vim-gruvbox8"
  }

  -- gruvbox -- with true color - lua
  use {
    "ellisonleao/gruvbox.nvim",
    requires = {"rktjmp/lush.nvim"}
  }

  -- snippet
--  use {
--    "SirVer/ultisnips"
--  }

  -- formatting
  use {
    "prettier/vim-prettier",
    run = "yarn install"
  }

  use {
    "nvim-lua/plenary.nvim"
  }

  -- fuzzy finder over lists -lua
  use {
    "nvim-telescope/telescope.nvim",
    requires = { {"nvim-lua/plenary.nvim"} },
--    keys = {"n", "<leader>af"}
  }

  -- lsp - lua
  use {
    "nvim-treesitter/nvim-treesitter",
    event = "BufRead",
  }

  use {
    "kabouzeid/nvim-lspinstall",
    -- event = "BufRead",
  }

  use {
    "neovim/nvim-lspconfig",
    after = "nvim-lspinstall",
  }

  -- File Explorer - lua
  use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
--    keys = {"n", "<leader>at"}
  }

  -- startup time check - vim
  use {
    'tweekmonster/startuptime.vim'
  }

  -- markdown preview - vim
  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && yarn install',
    cmd = 'MarkdownPreview',
    ft = 'markdown'
  }

  -- git signs - lua
  --[[ use {
    'lewis6991/gitsigns.nvim',
    cond = function()
      return vim.fn.isdirectory ".git" == 1
    end,
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function() 
      require('gitsigns').setup() 
    end
  } ]]

  -- indent blankline - lua
  use {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead"
  }

  -- statusline -lua
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- buffer line -lua
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    -- after = 'lualine'
  }

  end,

  -- using a floating window
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }})

