local user_opts = require('setup').options
local plugin_opts = user_opts.plugin_options
local S = {}

-- theme -- default is gruvbox_material
local usrtheme = 'gruvbox_material'
if plugin_opts.theme_statusline then
  usrtheme = plugin_opts.theme_statusline
end

S.default = function()
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

S.set1 = function()
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
      lualine_c = {
        'filename'
        --[[ {
          'diagnostics',
          sources = {'nvim_lsp'},
          sections = {'error', 'warn', 'info'},
          color_error = nil,
          color_warn = nil,
          color_info = nil,
          symbols = {error = '', warn = '', info = ''}
        }, ]]
      },
      lualine_x = {
        {
          'diff',
          colored = true,
          color_added = nil,
          color_modified = nil,
          color_removed = nil,
          symbols = {added = '+', modified = '~', removed = '-'}
        },
        'fileformat',
        'filetype'
      },
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
    extensions = {'nvim-tree'}
  }
end

return S
