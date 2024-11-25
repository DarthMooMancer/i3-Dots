return {
  { "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "windwp/nvim-autopairs", opts = {} },
      { "norcalli/nvim-colorizer.lua", opts = {} },
    },
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "rust", "java", "python" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
  },
}
