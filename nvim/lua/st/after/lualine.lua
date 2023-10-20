local status_ok, lualine = pcall(require, 'lualine')

if not status_ok then
  return
end

lualine.setup{
  options = {
    section_separators = { left = ' ', right = ' ' },
    component_separators = { left = ' ', right = ' ' },
    icons_enabled = false,
    theme = 'auto',
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filetype','diagnostics'},
    lualine_c = {},
    lualine_x = {'encoding'},
    lualine_y = {},
    lualine_z = {'location'}
  },
}
