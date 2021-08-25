
-- set the path depends on os systems
local vim = vim
local home = os.getenv("HOME")
local sep = '/' -- for mac os system
local os_sys = vim.loop.os_uname().sysname  -- check os system "Darwin", "Linux", "Windows"
local global = {}

-- set the os sys
if os_sys == 'Darwin' then
  global.os_sys = "MacOS"
else
  global.os_sys = os_sys
end

-- set the sys paths
global.paths = {
  home = home,
  sep = sep,
  vim_path = vim.fn.stdpath('config'),
  cache_dir = home .. sep .. '.cache' .. sep .. 'nvim' .. sep,
  modules_dir = vim.fn.stdpath('config') .. sep .. 'modules',
  data_dir = string.format('%s/site/',vim.fn.stdpath('data')),
}

return global
