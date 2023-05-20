local M = {}

M.config = function()
  -- installs
  lvim.plugins = {

    {'folke/tokyonight.nvim'},
    {'windwp/nvim-ts-autotag'},
    {"github/copilot.vim"},
    {'christoomey/vim-tmux-navigator'},

  }

  lvim.keys.insert_mode["jk"] = "<esc>"
  -- general
  require('nvim-ts-autotag').setup()
  require('nvim-treesitter.configs').setup {
    autotag = {
      enable = true,
    }
  }

  -- lsp's
  vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pylsp", "pyright" })
  require('christian.plugins.lsp.pylsp')
  require("lvim.lsp.manager").setup("tsserver")
  --
  --
    -- Prettier configuration
  local formatters = require "lvim.lsp.null-ls.formatters"
  formatters.setup {
    {
      exe = "prettier",
      filetypes = {
        "javascriptreact",
        "javascript",
        "typescriptreact",
        "typescript",
        "svelte",
        "python",
        "json",
        "markdown",
      },
    },
  }

end

return M
