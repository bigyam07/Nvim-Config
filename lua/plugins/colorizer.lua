return {
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        filetypes = {
          "css", "scss", "html", "javascript", "typescript",
          "javascriptreact", "typescriptreact"
        },
        user_default_options = {
          tailwind = true,
          mode = "background",
        },
      })
    end,
  },
}

