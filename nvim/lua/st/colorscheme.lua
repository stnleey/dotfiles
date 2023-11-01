-- local colorscheme = "oxocarbon"
-- local colorscheme = "default"
-- local colorscheme = "torte"
-- local colorscheme = "lunar"
-- local colorscheme = "catppuccin-mocha"
-- local colorscheme = "aurora"
-- local colorscheme = "sherbet"
-- local colorscheme = "darkplus"
-- local colorscheme = "kyotonight"
-- local colorscheme = "tokyonight-moon"
local colorscheme = "gruvbox"
-- local colorscheme = "retrobox"
-- local colorscheme = "lunaperche"
-- local colorscheme = "codemonkey"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("Colorscheme " .. colorscheme .. " not found...")
end
