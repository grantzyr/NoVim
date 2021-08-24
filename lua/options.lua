-- load all options here

local g, opt, cmd, fn = vim.g, vim.opt, vim.cmd, vim.fn
local user_opts  = require("setup").options

local load_options = function() 

  -- Theme
  if user_opts.theme_options then
    cmd(user_opts.theme_options)
  end

  -- statusline  - lualine
  if user_opts.statusline then
    require("plugins.lualine").set1()
  end

  -- bufferline
  if user_opts.bufferline then
    require("plugins.bufferline").set1()
  end

  -- load options from user setup - options - global_options
  for name,value in pairs(user_opts.global_options) do
    vim.opt[name] = value
  end

  -- load bind options
  for name, value in pairs(user_opts.bind_options) do
    vim.opt[name] = value
  end

end

load_options()

