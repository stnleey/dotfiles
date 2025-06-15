return {
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.kanagawabones_italic_comments = false
      vim.g.kanagawabones_italic_strings = false
      vim.g.kanagawabones_italic_keywords = false
      vim.g.kanagawabones_italic_functions = false
      vim.g.kanagawabones_italic_variables = false
    end,
  },

  -- modus-themes
  {
    "miikanissi/modus-themes.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
      },
    },
  },

  -- Tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
  },

  -- moonfly
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
  },

  -- gruber-darker
  {
    "blazkowolf/gruber-darker.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      bold = false,
      italic = {
        strings = false,
      },
    },
  },

  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        italic = {
          strings = false,
          emphasis = false,
          comments = true,
          operators = false,
          folds = false,
        },
      })
    end,
  },

  -- Catppuccin (default theme, so config is here)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- load immediately
    priority = 1000,
    config = function()
      -- Safely apply the theme
      local theme = "kanagawabones"
      local ok, _ = pcall(vim.cmd.colorscheme, theme)
      if not ok then
        vim.notify("Colorscheme " + theme + " not found!", vim.log.levels.WARN)
      end
    end,
  },
}
