return {

  {
    "tpope/vim-fugitive",
    event = "VeryLazy",
  },

  {
    "sindrets/diffview.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    event = "VeryLazy",
  },

  -- {
  --   "pwntester/octo.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim",
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --   config = function()
  --     require("octo").setup({
  --       use_local_fs = false,
  --       timeout = 10000,
  --     })
  --   end,
  --   event = "VeryLazy",
  -- },
}
