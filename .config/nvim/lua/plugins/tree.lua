return {

  -- disable LazyVim provided tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      filters = {
        dotfiles = false,
      },
      view = {
        width = 40,
      },
      renderer = {
        group_empty = true,
      },
      filesystem_watchers = {
        enable = false,
        debounce_delay = 50,
        ignore_dirs = {},
      },
    },
  },
}
