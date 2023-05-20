local M = {}

M.config = function ()
  lvim.keys.insert_mode["jk"] = "<esc>"

  -- jumping
  lvim.keys.normal_mode["<C-d>"] = "<C-d>zz" -- Control d jump down one page and center cursor
  lvim.keys.normal_mode["<C-u>"] = "<C-u>zz" -- Control u jump up one page and center cursor

  -- For visual mode keybinding
  lvim.keys.visual_mode["y"] = "ygv<Esc>"

  -- deleting should not copy to register
  lvim.keys.normal_mode["x"] = '"_x'
  lvim.keys.normal_mode["dw"] = '"_dw'
  lvim.keys.normal_mode["dd"] = '"_dd'
  lvim.keys.normal_mode["D"] = '"_D'


  -- plugins
  lvim.keys.normal_mode["<Leader>s"] = ":Telescope live_grep<CR>"

  -- copilot
  vim.g.copilot_no_tab_map = true
  vim.g.copilot_assume_mapped = true
  vim.g.copilot_tab_fallback = ""
  local cmp = require "cmp"

  lvim.builtin.cmp.mapping["<leader>a"] = function(fallback)
    cmp.mapping.abort()
    local copilot_keys = vim.fn["copilot#Accept"]()
    if copilot_keys ~= "" then
      vim.api.nvim_feedkeys(copilot_keys, "i", true)
    else
      fallback()
    end
  end

end


return M
