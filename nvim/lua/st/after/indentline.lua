local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end

indent_blankline.config.exclude.buftypes = { "terminal", "nofile" }
indent_blankline.config.exclude.filetypes = {
	"help",
	"startify",
	"dashboard",
	"packer",
	"neogitstatus",
	-- "NvimTree",
	"Trouble",
}
vim.g.indentLine_enabled = 1
indent_blankline.config.indent.char = "▏"
indent_blankline.config.scope.enabled = true
vim.wo.colorcolumn = "99999"

indent_blankline.setup()
