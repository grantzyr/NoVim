
local galaxyline = require('galaxyline')
local condition = require('galaxyline.condition')
local diagnostic = require('galaxyline.provider_diagnostic')
local gls = galaxyline.section
local theme = require('setup').options.theme_statusline

-- galaxyline.short_line_list = {'NvimTree','vista','dbui','packer'}
galaxyline.short_line_list = {'LuaTree','vista','dbui'}

-- default from galaxyline
-- https://github.com/glepnir/galaxyline.nvim/blob/main/example/spaceline.lua
local default = function()

  -- TODO 
  -- 1. change the color with mode change
  -- 2. change the color with the file content changed
  -- 3. change the icon "pencil" if file changed otherwise don't show pencil
  -- 4. change the right loading animation
  -- 5. get to know what is short_line_list

  local colors = require('theme.colors').default

  local buffer_not_empty = function()
    if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
      return true
    end
    return false
  end

  gls.left[1] = {
    FirstElement = {
      provider = function() return '▋' end,
      highlight = {colors.purple,colors.purple}
    },
  }
  gls.left[2] = {
    ViMode = {
      provider = function()
        local alias = {
          n = 'NORMAL',
          i = 'INSERT',
          c= 'COMMAND',
          v= 'VISUAL',
          V= 'VISUAL LINE', 
          [''] = 'VISUAL BLOCK'}
        return alias[vim.fn.mode()]
      end,
      separator = '',
      separator_highlight = {colors.purple,function()
        if not buffer_not_empty() then
          return colors.purple
        end
        return colors.darkblue
      end},
      highlight = {colors.darkblue,colors.purple,'bold'},
    },
  }
  gls.left[3] ={
    FileIcon = {
      provider = 'FileIcon',
      condition = buffer_not_empty,
      highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.darkblue},
    },
  }
  gls.left[4] = {
    FileName = {
      provider = {'FileName','FileSize'},
      condition = buffer_not_empty,
      separator = '',
      separator_highlight = {colors.purple,colors.darkblue},
      highlight = {colors.magenta,colors.darkblue}
    }
  }

  gls.left[5] = {
    GitIcon = {
      provider = function() return '  ' end,
      condition = buffer_not_empty,
      highlight = {colors.orange,colors.purple},
    }
  }
  gls.left[6] = {
    GitBranch = {
      provider = 'GitBranch',
      condition = buffer_not_empty,
      highlight = {colors.grey,colors.purple},
    }
  }

  local checkwidth = function()
    local squeeze_width  = vim.fn.winwidth(0) / 2
    if squeeze_width > 40 then
      return true
    end
    return false
  end

  gls.left[7] = {
    DiffAdd = {
      provider = 'DiffAdd',
      condition = checkwidth,
      icon = ' ',
      highlight = {colors.green,colors.purple},
    }
  }
  gls.left[8] = {
    DiffModified = {
      provider = 'DiffModified',
      condition = checkwidth,
      icon = ' ',
      highlight = {colors.orange,colors.purple},
    }
  }
  gls.left[9] = {
    DiffRemove = {
      provider = 'DiffRemove',
      condition = checkwidth,
      icon = ' ',
      highlight = {colors.red,colors.purple},
    }
  }
  gls.left[10] = {
    LeftEnd = {
      provider = function() return '' end,
      separator = '',
      separator_highlight = {colors.purple,colors.bg},
      highlight = {colors.purple,colors.purple}
    }
  }
  gls.left[11] = {
    DiagnosticError = {
      provider = 'DiagnosticError',
      icon = '  ',
      highlight = {colors.red,colors.bg}
    }
  }
  gls.left[12] = {
    Space = {
      provider = function () return ' ' end
    }
  }
  gls.left[13] = {
    DiagnosticWarn = {
      provider = 'DiagnosticWarn',
      icon = '  ',
      highlight = {colors.blue,colors.bg},
    }
  }
  gls.right[1]= {
    FileFormat = {
      provider = 'FileFormat',
      separator = '',
      separator_highlight = {colors.bg,colors.purple},
      highlight = {colors.grey,colors.purple},
    }
  }
  gls.right[2] = {
    LineInfo = {
      provider = 'LineColumn',
      separator = ' | ',
      separator_highlight = {colors.darkblue,colors.purple},
      highlight = {colors.grey,colors.purple},
    },
  }
  gls.right[3] = {
    PerCent = {
      provider = 'LinePercent',
      separator = '',
      separator_highlight = {colors.darkblue,colors.purple},
      highlight = {colors.grey,colors.darkblue},
    }
  }
  gls.right[4] = {
    ScrollBar = {
      provider = 'ScrollBar',
      highlight = {colors.yellow,colors.purple},
    }
  }

  gls.short_line_left[1] = {
    BufferType = {
      provider = 'FileTypeName',
      separator = '',
      separator_highlight = {colors.purple,colors.bg},
      highlight = {colors.grey,colors.purple}
    }
  }


  gls.short_line_right[1] = {
    BufferIcon = {
      provider= 'BufferIcon',
      separator = '',
      separator_highlight = {colors.purple,colors.bg},
      highlight = {colors.grey,colors.purple}
    }
  }
end

local magicDuck = function()

  local colors = require('theme.colors').default
  local hf = require('theme.help_functions')
  local icons = hf.icons
  
  local sectionCount = {
    left = 0,
    mid = 0,
    right = 0,
    short_line_left = 0,
    short_line_right = 0
  }

  local nextSectionNum = function(sectionKind)
    local num = sectionCount[sectionKind] + 1
    sectionCount[sectionKind] = num
    return num
  end

  local addSection = function(sectionKind, section)
    local num = nextSectionNum(sectionKind)
    local id = sectionKind .. "_" .. num .. "_" .. section.name
    -- note: this is needed since id's get mapped to highlights name `Galaxy<Id>`
    if (section.useNameAsId == true) then
      id = section.name
    end
    galaxyline.section[sectionKind][num] = {
      [id] = section
    }
  end

  local addSections = function(sectionKind, sections)
    for _, section in pairs(sections) do
      addSection(sectionKind, section)
    end
  end

  local string_provider = function(str)
    return function()
      return str
    end
  end

  local createSpaceSection = function(color)
    return {
      name = "whitespace",
      provider = string_provider(" "),
      highlight = {color, color}
    }
  end

  addSections(
    "left",
    {
      createSpaceSection(colors.base04),
      {
        name = "ViMode",
        useNameAsId = true,
        provider = function()
          -- auto change color according the vim mode
          local modeStyle = hf.get_vim_mode_style()
          vim.api.nvim_command("hi GalaxyViMode guibg=" .. modeStyle[2])
          return icons.sep.space .. modeStyle[1] .. icons.sep.space
        end,
        highlight = {colors.light01, colors.base02, "bold"}
      },
      {
        name = "ViModeRightCap",
        useNameAsId = true,
        provider = function()
          local modeStyle = hf.get_vim_mode_style()
          vim.api.nvim_command("hi GalaxyViModeRightCap guifg=" .. modeStyle[2])
          return icons.sep.right
        end,
        highlight = {colors.base02, colors.bg_active}
      },
      createSpaceSection(colors.bg_active),
      {
        name = "fileLeftCap",
        provider = string_provider(icons.sep.left),
        condition = condition.buffer_not_empty,
        highlight = {colors.base02, colors.bg_active},
        separator = " ",
        separator_highlight = {colors.base02, colors.base02}
      },
      {
        name = "fileIcon",
        provider = {"FileIcon"},
        condition = condition.buffer_not_empty,
        highlight = {colors.base07, colors.base02},
        separator = " ",
        separator_highlight = {colors.base07, colors.base02}
      },
      {
        name = "fileName",
        provider = hf.current_file_name_provider,
        condition = condition.buffer_not_empty,
        highlight = {colors.base07, colors.base02},
        separator = " ",
        separator_highlight = {colors.base07, colors.base02}
      },
      {
        name = "diagnostic",
        provider = "DiagnosticError",
        icon = icons.sep.space .. icons.diagnostic.error,
        condition = condition.check_active_lsp,
        highlight = {colors.light01, colors.orange}
      },
      {
        icon = " ",
        name = "lineColumn",
        provider = "LineColumn",
        condition = condition.buffer_not_empty,
        highlight = {colors.light01, colors.base04, "bold"},
        separator = " ",
        separator_highlight = {colors.base04, colors.base04}
      },
      {
        icon = " ",
        name = "linePercent",
        provider = "LinePercent",
        condition = condition.buffer_not_empty,
        highlight = {colors.light01, colors.yellow}
      },
      {
        name = "fileRightCap",
        provider = string_provider(icons.sep.right),
        condition = condition.buffer_not_empty,
        highlight = {colors.yellow, colors.bg_active}
      },
      createSpaceSection(colors.bg_active)
    }
  )

  addSections(
    "right",
    {
      {
        name = "leftCap",
        provider = string_provider(icons.sep.left),
        highlight = {colors.base02, colors.bg_active}
      },
      {
        name = "gitBranch",
        icon = icons.git,
        provider = "GitBranch",
        condition = function()
          local remainingWidth = vim.fn.winwidth(0) - hf.get_filename():len()
          return (remainingWidth >= 83) and condition.check_git_workspace()
        end,
        highlight = {colors.base07, colors.base02},
        separator = " ",
        separator_highlight = {colors.base07, colors.base02}
      },
      {
        name = "lsp_status",
        provider = string_provider(icons.lsp),
        condition = condition.check_active_lsp,
        highlight = {colors.base07, colors.base02},
        separator = " ",
        separator_highlight = {colors.base07, colors.base02}
      },
      createSpaceSection(colors.base02),
      createSpaceSection(colors.base04)
    }
  )

  addSections(
    "short_line_left",
    {
      createSpaceSection(colors.base03),
      {
        name = "viMode",
        provider = function()
          local modeStyle = hf.get_vim_mode_style()
          return icons.sep.space .. modeStyle[1] .. icons.sep.space
        end,
        highlight = {colors.base05, colors.base02, "bold"}
      },
      {
        name = "viModeRightCap",
        provider = string_provider(icons.sep.right),
        highlight = {colors.base02, colors.bg_active}
      },
      createSpaceSection(colors.bg_active),
      {
        name = "fileLeftCap",
        provider = string_provider(icons.sep.left),
        condition = condition.buffer_not_empty,
        highlight = {colors.base02, colors.bg_active},
        separator = " ",
        separator_highlight = {colors.base02, colors.base02}
      },
      {
        name = "fileIcon",
        provider = {"FileIcon"},
        condition = condition.buffer_not_empty,
        highlight = {colors.base07, colors.base02},
        separator = " ",
        separator_highlight = {colors.base07, colors.base02}
      },
      {
        name = "fileName",
        provider = "FileName",
        condition = condition.buffer_not_empty,
        highlight = {colors.base07, colors.base02},
        separator = " ",
        separator_highlight = {colors.base07, colors.base02}
      },
      {
        icon = " ",
        name = "lineColumn",
        provider = "LineColumn",
        condition = condition.buffer_not_empty,
        highlight = {colors.light01, colors.base04, "bold"},
        separator = " ",
        separator_highlight = {colors.base04, colors.base04}
      },
      {
        name = "fileRightCap",
        provider = string_provider(icons.sep.right),
        condition = condition.buffer_not_empty,
        highlight = {colors.base04, colors.bg_active}
      },
      createSpaceSection(colors.bg_active)
    }
  )

  addSections(
    "short_line_right",
    {
      {
        name = "leftCap",
        provider = string_provider(icons.sep.left),
        highlight = {colors.base02, colors.bg_active}
      },
      createSpaceSection(colors.base02),
      createSpaceSection(colors.base03)
    }
  )
 
end

if theme == 'magic_duck' then
  magicDuck()
else
  default()
end
