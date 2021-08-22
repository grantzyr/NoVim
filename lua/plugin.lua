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

packer.init({
  package_root = util.join_paths(vim.fn.stdpath("data"), "site", "pack")
})

packer.startup(function()
  -- Packer can manage itself - lua
  use {
    "wbthomason/packer.nvim"
    -- event = "VimEnter",
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
  -- gloombuddy
  use {
    "bkegley/gloombuddy"
  }

  -- gruvbox8
  use {
    "lifepillar/vim-gruvbox8"
  }

  -- gruvbox
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


  -- fuzzy finder over lists -lua
  use {
    "nvim-telescope/telescope.nvim",
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  -- lsp - lua
  use {
    "neovim/nvim-lspconfig"
  }

  -- File Explorer - lua
  use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons"
  }

  -- statusline -lua
  use {
    "glepnir/galaxyline.nvim",
    branch = "main",
    -- my statusline
    config = function() require"my_statusline" end,
    -- some optional icons
    requires = {"kyazdani42/nvim-web-devicons", opt = true}
  }
  end
)
