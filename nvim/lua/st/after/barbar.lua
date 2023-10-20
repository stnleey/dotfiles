local ok, barbar = pcall(require, "barbar")
if not ok then
  print("cat't get module 'barbar.nvim'")
  return
end

vim.g.barbar_auto_setup = false -- disable auto-setup

barbar.setup {
  animations = false,
  icons = {
    buffer_index = false,
    buffer_number = false,
    button = '×',
    separator = {left = '▎', right = ''},

    -- If true, add an additional separator at the end of the buffer list
    separator_at_end = true,

    -- Configure the icons on the bufferline when modified or pinned.
    -- Supports all the base icon options.
    modified = {button = '●'},
    pinned = {button = '', filename = true},

    -- Configure the icons on the bufferline based on the visibility of a buffer.
    -- Supports all the base icon options, plus `modified` and `pinned`.
    alternate = {filetype = {enabled = false}},
    current = {buffer_index = false},
    inactive = {button = '󰅙'},
    visible = {modified = {buffer_number = false}},
  },

  maximum_length = 30,
  minimum_length = 0,

  -- Set the filetypes which barbar will offset itself for
  sidebar_filetypes = {
    NvimTree = {
      text = nil,
    },
  },
}
