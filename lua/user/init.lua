return {
  plugins = {
    {
      "rose-pine/neovim",
      name = "rose-pine",
      config = function()
        require("rose-pine").setup({
          variant = "main", -- auto, main, moon, or dawn
          dark_variant = "main",
          bold_vert_split = false,
          dim_nc_background = false,
          disable_background = false,
          disable_float_background = false,
          disable_italics = false,
        })
        vim.cmd("colorscheme rose-pine")
      end
    },
  },
}

