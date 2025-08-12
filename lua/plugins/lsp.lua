-- File: lua/plugins/lsp.lua
return {
  {
    "AstroNvim/astrolsp",
    opts = {
      servers = {
        "clangd", -- C/C++
        "tailwindcss", -- Tailwind CSS
      },
    },
  },
}

