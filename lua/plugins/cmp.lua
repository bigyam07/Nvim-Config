return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      -- other cmp sources if you want
    },
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    lazy = true,
  },
}

