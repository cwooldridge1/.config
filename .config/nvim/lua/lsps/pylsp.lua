local opts = {
  settings = {
    pylsp = {
      plugins = {
        pylsp_mypy = { enabled = true },
        pycodestyle = {
          ignore = {
            "E203", -- Whitespace before ':' (colons) error
            "E231", -- Missing whitespace after ',' (comma) error
            "E504", -- Line break occurred after a binary operator error
            "E251", -- Unexpected spaces around keyword/parameter equals error
            "E275", -- Missing whitespace after ':' (colons) error
            "E226", -- Missing whitespace around arithmetic operator error
            "W503", -- Line break occurred before a binary operator error
            "W504", -- Line break occurred after a binary operator error
            "E501", -- Line too long error
            "C901", -- Class method is too complex error
            "E265", -- Block comment should start with '# ' error
            "E303", -- Too many blank lines (3) error
            "E402", -- Module level import not at top of file error
          },
        },
      },
    },
  },
}
local lspconfig = require("lspconfig")
lspconfig.pylsp.setup(opts)
