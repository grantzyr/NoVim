
-- These help function from MagicDuck/dotfiles 
-- https://github.com/MagicDuck/dotfiles/blob/master/.config/nvim/lua/my/galaxyline/init.lua

local galaxyline = require("galaxyline")
local condition = require("galaxyline.condition")
local diagnostic = require("galaxyline.provider_diagnostic")
local vcs = require("galaxyline.provider_vcs")
local fileinfo = require("galaxyline.provider_fileinfo")
local colors = require("theme.colors").default

local helps = {}
local modes = {
  n       = {"NORMAL", colors.green},
  v       = {"VISUAL", colors.cyan},
  V       = {"V-LINE", colors.cyan},
  [""]  = {"V-BLOCK", colors.cyan},
  s       = {"SELECT", colors.orange},
  S       = {"S-LINE", colors.orange},
  [""]  = {"S-BLOCK", colors.orange},
  i       = {"INSERT", colors.yellow},
  R       = {"REPLACE", colors.red},
  c       = {"COMMAND", colors.blue},
  r       = {"PROMPT", colors.brown},
  ["!"]   = {"EXTERNAL", colors.purple},
  t       = {"TERMINAL", colors.purple}
}


local get_filename = function()
  return vim.fn.expand("%:h:t") .. "/" .. vim.fn.expand("%:t")
end

local file_readonly = function(readonly_icon)
  if vim.bo.filetype == "help" then
    return ""
  end
  local icon = readonly_icon or ""
  if vim.bo.readonly == true then
    return " " .. icon .. " "
  end
  return ""
end

helps.icons = {
  goat = "🐐",
  knight = "♞",
  clubs = "♣︎",
  sep = {
    left = "",
    right = "",
    space = " "
  },
  diagnostic = {
    error = " ",
    warn = " ",
    info = " "
  },
  diff = {
    add = " ",
    modified = " ",
    remove = " "
  },
  -- git = ""
  git = " ",
  lsp = "⚡️"
}

helps.get_vim_mode_style = function()
  local vim_mode = vim.fn.mode()
  return modes[vim_mode]
end

helps.get_filename = function()
  return vim.fn.expand("%:h:t") .. "/" .. vim.fn.expand("%:t")
end

helps.file_readonly = function(readonly_icon)
  if vim.bo.filetype == "help" then
    return ""
  end
  local icon = readonly_icon or ""
  if vim.bo.readonly == true then
    return " " .. icon .. " "
  end
  return ""
end

helps.current_file_name_provider = function()
  local file = get_filename()
  if vim.fn.empty(file) == 1 then
    return ""
  end
  if string.len(file_readonly()) ~= 0 then
    return file .. file_readonly()
  end
  local icon = ""
  if vim.bo.modifiable then
    if vim.bo.modified then
      return file .. " " .. icon .. "  "
    end
  end
  return file .. " "
end

return helps
