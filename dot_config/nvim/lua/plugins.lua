require("nvim-autopairs").setup{}

local lspconfig = require('lspconfig')
lspconfig.pyright.setup{}
lspconfig.rust_analyzer.setup{}

lspconfig.jdtls.setup{}
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = {
          "vim"
        }
      }
    }
  }
}

require('snippets').register_cmp_source()
local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-x>"] = cmp.mapping.confirm({ select = true }),
    ['<C-k>'] = cmp.mapping(
      function(fallback)
        if vim.snippet.active({direction = 1}) then
          vim.snippet.jump(1)
        else
          fallback()
        end
      end, { 'i', 's' }
    ),
  }),
  sources = cmp.config.sources({
    { name = "snp"},
    { name = "nvim_lsp" },
  })
})

require('nvim-treesitter.configs').setup {
  ensure_installed = { "lua", "python", "rust" },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
}
