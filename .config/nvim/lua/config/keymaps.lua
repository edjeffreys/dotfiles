-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")
local jdtls = require("jdtls")

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

-- Tmux Nav
map("n", "<c-h>", "<cmd>TmuxNavigateLeft<cr>")
map("n", "<c-j>", "<cmd>TmuxNavigateDown<cr>")
map("n", "<c-k>", "<cmd>TmuxNavigateUp<cr>")
map("n", "<c-l>", "<cmd>TmuxNavigateRight<cr>")

-- Centre buffer on scroll
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-d>", "<C-d>zz")

map("n", "<leader>fw", "<cmd>FzfLua grep_project<cr>")

map("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })

map("n", "<leader>gs", "<cmd>Git<cr>", { desc = "Open git status" })
map("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Open diffview" })

map("n", "<leader>d", '"_d', { desc = "Delete without overwriting register" })

-- Java tests
map("n", "<leader>ct", jdtls.test_class, { desc = "Go to test class" })
map("n", "<leader>co", jdtls.organize_imports, { desc = "Organize imports" })
map("n", "<leader>cev", jdtls.extract_variable, { desc = "Extract variable" })
map("n", "<leader>cem", jdtls.extract_method, { desc = "Extract method" })
map("n", "<leader>cec", jdtls.extract_constant, { desc = "Extract constant" })

map("n", "gt|", "<cmd>vsplit | lua vim.lsp.buf.definition()<cr>", { desc = "Go to definition in new vsplit" })
map("n", "gt|", "<cmd>hsplit | lua vim.lsp.buf.definition()<cr>", { desc = "Go to definition in new hsplit" })
