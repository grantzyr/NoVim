-- load all options here

local g, opt, cmd, fn = vim.g, vim.opt, vim.cmd, vim.fn
local user_opts  = require("setup").options
local theme_opts = user_opts.plugin_options.theme_set
local plugin_opts = user_opts.plugin_options.plugin_set
local global_opts = user_opts.global_options
local bind_opts = user_opts.bind_options

local load_options = function() 

  -- load options from user setup - options - global_options
  for name,value in pairs(global_opts) do
    vim.opt[name] = value
  end

  -- load bind options
  for name, value in pairs(bind_opts) do
    vim.opt[name] = value
  end

  -- load plugin options
  for v,t in pairs(plugin_opts) do
    if t == "default" then
      require("plugins." .. tostring(v)).default()
    elseif t == "set1" then
      require("plugins." .. tostring(v)).set1()
    end
  end

  -- Theme
  if theme_opts.theme_options then
    cmd("colorscheme " .. theme_opts.theme_options)
  else
    cmd("colorscheme gruvbox")
  end
end

load_options()

