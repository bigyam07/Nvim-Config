return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "main", -- or moon/dawn
        dark_variant = "main",
        bold_vert_split = false,
        dim_nc_background = false,
        disable_background = false,
        disable_float_background = false,
        disable_italics = false,
      })

      vim.cmd.colorscheme("rose-pine")

      -- Override background to pure black
      vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "#000000" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })
      vim.api.nvim_set_hl(0, "LineNr", { bg = "#000000" })
      vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#000000" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })

      vim.o.termguicolors = true
      vim.o.syntax = "on"
    end,
  },
}
