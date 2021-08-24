local nvimtree = require('nvim-tree')
local S = {}

S.bind_keys = {
  {"n", "<C-n>", ":NvimTreeToggle<CR>", {}},
  {"n", "<leader>r", ":NvimTreeRefresh<CR>", {}},
  {"n", "<leader>n", ":NvimTreeFindFile<CR>", {}}
}

return S
