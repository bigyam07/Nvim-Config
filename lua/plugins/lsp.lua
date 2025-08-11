-- Make sure you already have mason + mason-lspconfig installed and set up

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")

      -- Common on_attach + capabilities
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local on_attach = function(_, bufnr)
        local opts = { buffer = bufnr, silent = true }
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      end

      -- Tailwind CSS LSP
      lspconfig.tailwindcss.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = {
          "html",
          "css",
          "scss",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
        },
        root_dir = lspconfig.util.root_pattern(
          "tailwind.config.js",
          "tailwind.config.cjs",
          "tailwind.config.mjs",
          "tailwind.config.ts",
          "postcss.config.js",
          "package.json",
          ".git"
        ),
        settings = {
          tailwindCSS = {
            experimental = {
              classRegex = {
                "tw`([^`]*)", -- tw`...`
                'tw="([^"]*)',
                'tw={"([^"}]*)',
                "tw\\.\\w+`([^`]*)", -- tw.xxx`...`
                "tw\\(.*?\\)`([^`]*)", -- tw(...)`...`
              },
            },
          },
        },
      })
    end,
  },
}

