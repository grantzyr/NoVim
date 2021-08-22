
local g, opt, cmd, fn = vim.g, vim.opt, vim.cmd, vim.fn
local usr_opts  = require("setup").options

local function user_options()

  -- Theme
  if usr_opts.theme_options then
    cmd(usr_opts.theme_options)
  end

  -- statusline
  require("lualine_setup")

  -- load options from usr setup - options - global_options
  for name,value in pairs(usr_opts.global_options) do
		vim.opt[name] = value
	end

  -- load bind options
  for name, value in pairs(usr_opts.bind_options) do
    vim.opt[name] = value
  end

end

local function bind_options()


end

user_options()
bind_options()


