-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<leader>gs", "<cmd>Git<cr>", { desc = "Open git status" })
map("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Open diffview" })
map("n", "<leader>ee", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle NvimTree" })
map("n", "<leader>ef", "<cmd>NvimTreeFindFile<cr>", { desc = "Find file in NvimTree" })
map("n", "<leader>d", '"_d', { desc = "Delete without overwriting register" })
