return {

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "java",
        "kotlin",
        "terraform",
      })
    end,
  },
  {
    "tpope/vim-commentary",
    lazy = false,
  },
  {
    "L3MON4D3/LuaSnip",
    enabled = false,
  },
}
