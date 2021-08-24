local bufferline = require('bufferline')
local S = {}

S.default = function()
  bufferline.setup {}
end

S.set1 = function()
  bufferline.setup {
    options = {
      numbers = "none",  -- "none", "ordinal", "buffer_id", "both"
      -- number_style = "",  -- "superscript", "", {"none", "subscript}
      right_mouse_command = "bdelete! %d",
      left_mouse_command = "buffer %d",
      middle_mouse_command = nil,
      indicator_icon = '▎',
      buffer_close_icon = '',
      modified_icon = "",
      close_icon = "",
      left_trunc_marker = '',
      right_trunc_marker = '',
      --[[ name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
        -- remove extension from markdown files for example
        if buf.name:match('%.md') then
          return vim.fn.fnamemodify(buf.name, ':t:r')
        end
      end, ]]
      max_name_length = 14,
      max_prefix_length = 13,
      tab_size = 18,
      -- diagnostics = "nvim_lsp",
      --[[ diagnostics_indicator = function(count, level, diagnostics_dict, context)
        return "("..count..")"
      end, ]]
      offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left", padding = 1}},
      show_buffer_icons = true,
      show_buffer_close_icons = true,
      show_close_icon = true,
      show_tab_indicators = true,
      persist_buffer_sort = true,
      separator_style = "thin",
      enforce_regular_tabs = false,
      always_show_bufferline = true,
      sort_by = 'relative_directory',
    },
  }
end

S.bind_keys = {
  {"n", "<leader>pb", ":BufferLinePick<CR>",{}},
  {"n", "<leader>pc", ":BufferLinePickClose<CR>",{}}
}

return S
