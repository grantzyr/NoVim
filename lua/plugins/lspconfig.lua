
local lspinstall = require('lspinstall')
local lspconfig = require('lspconfig')

local S = {}

local setup_servers = function()
  lspinstall.setup()
  local servers = lspinstall.installed_servers()
  for _, server in pairs(servers) do
    lspconfig[server].setup{}
  end
end

S.default = function()
  setup_servers()
  -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
  lspinstall.post_install_hook = function ()
    setup_servers() -- reload installed servers
    vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
  end
end

return S
