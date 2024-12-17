return {
  {
    "edjeffreys/neotest-java",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    dev = true,
  },
  {
    "nvim-neotest/neotest",
    opts = {
      log_level = vim.log.levels.DEBUG,
      adapters = {
        ["neotest-java"] = {},
      },
    },
  },
}
