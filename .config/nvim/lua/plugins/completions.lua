return {
  { "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    config = function()
      require('config.snippets').register_cmp_source()
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
          { name = "snp" },
          { name = "buffer" },
          { name = "path" },
          { name = "nvim_lsp" },
        })
      })
    end,
  }
}
