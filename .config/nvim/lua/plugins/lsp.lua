return {
  { "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "rust_analyzer",
          "jdtls",
        },
        handlers = {
          function(server_name)
            lspconfig[server_name].setup {}
          end,
          ["lua_ls"] = function()
            lspconfig.lua_ls.setup {
              settings = {
                Lua = {
                  diagnostics = {
                    globals = { "vim" }
                  }
                }
              }
            }
          end,
        },
      })
    end
  }
}
