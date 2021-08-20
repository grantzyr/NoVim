
local g, opt, cmd, fn = vim.g, vim.opt, vim.cmd, vim.fn
local usr_opts  = require('setup').options


local function load_options()

  -- Theme
  cmd(usr_opts.theme_options)

  -- load options from usr setup - options - global_options
  for name,value in pairs(usr_opts.global_options) do
		vim.opt[name] = value
	end

end

load_options()
