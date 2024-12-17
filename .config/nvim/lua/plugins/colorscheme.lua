return {

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    config = function()
      require("lualine").setup({
        options = {
          theme = "material",
        },
      })
    end,
  },

  {
    "edjeffreys/material.nvim",
    config = function()
      require("material").setup({
        plugins = {
          "dashboard",
          "gitsigns",
          "indent-blankline",
          "nvim-cmp",
          "nvim-tree",
          "nvim-web-devicons",
          -- "telescope",
          "which-key",
        },

        lualine_style = "default",
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material",
    },
  },
}
