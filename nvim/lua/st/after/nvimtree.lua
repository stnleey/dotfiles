local status, tree = pcall(require, "nvim-tree")
if (not status) then return end

-- local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
-- if (not config_status_ok) then return end

-- local tree_cb = nvim_tree_config.nvim_tree_callback


tree.setup{
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    side = "left",
    number = false,
    relativenumber = false,
  },
  renderer = {
    highlight_git = true,
    root_folder_label = true,
    icons = {
      webdev_colors = true,
      git_placement = "before",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = false,
      }
    }
  }
}
