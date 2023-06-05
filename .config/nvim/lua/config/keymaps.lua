-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Insert Mode
vim.api.nvim_set_keymap("i", "jk", "<Esc>", {})

-- Jumping
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", {})
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", {})

-- Visual Mode
vim.api.nvim_set_keymap("v", "y", "ygv<Esc>", {})

-- Deleting
-- vim.api.nvim_set_keymap("n", "x", '"_x', {})
-- vim.api.nvim_set_keymap("n", "dw", '"_dw', {})
-- vim.api.nvim_set_keymap("n", "D", '"_D', {})
-- vim.api.nvim_set_keymap("n", "<leader>dl", '"_dd', {})

-- highlights
vim.api.nvim_set_keymap("n", "<leader>h", "noh", {})

--moving lines
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- copilot
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""

vim.api.nvim_set_keymap("n", "<leader>a", "<cmd>lua require'cmp'.mapping.abort()<CR>", {})
vim.api.nvim_set_keymap(
  "n",
  "<leader>a",
  "<cmd>lua local copilot_keys = vim.fn['copilot#Accept']() if copilot_keys ~= '' then vim.api.nvim_feedkeys(copilot_keys, 'i', true) else require'cmp'.mapping.abort() end<CR>",
  {}
)

-- harpoon
vim.api.nvim_set_keymap("n", "<leader>h", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', {})
vim.api.nvim_set_keymap("n", "<leader>ha", '<cmd>lua require("harpoon.mark").add_file()<CR>', {})
vim.api.nvim_set_keymap("n", "<leader>hh", '<cmd>lua require("harpoon.ui").nav_next()<CR>', {})
vim.api.nvim_set_keymap("n", "<leader>hl", '<cmd>lua require("harpoon.ui").nav_prev()<CR>', {})

--trouble
vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>TroubleToggle<CR>", {})

-- undo tree
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>")
