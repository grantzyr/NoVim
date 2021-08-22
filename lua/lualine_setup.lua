local usr_opts = require('setup').options

-- theme -- default is gruvbox_material
local usrtheme = 'gruvbox_material'
if usr_opts.options then
  usrtheme = usr_opts.options
end

local setup = function()
  require'lualine'.setup {
    options = {
      icons_enabled = true,
      theme = usrtheme,  -- by usr
      component_separators = {'', ''},
      section_separators = {'', ''},
      disabled_filetypes = {}
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch'},
      lualine_c = {'filename'},
      lualine_x = {'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    extensions = {}
  }
end

setup()
