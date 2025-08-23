return {
  -- Rose Pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup {
        variant = "main", -- or "moon" / "dawn"
        dark_variant = "main",
        bold_vert_split = false,
        dim_nc_background = false,
        disable_background = false,
        disable_float_background = false,
        disable_italics = false,
      }

      -- Set rose-pine as the colorscheme
      vim.cmd.colorscheme "rose-pine"

      -- Override background to pure black
      vim.api.nvim_set_hl(0, "Normal",       { bg = "#000000" })
      vim.api.nvim_set_hl(0, "NormalNC",     { bg = "#000000" })
      vim.api.nvim_set_hl(0, "SignColumn",   { bg = "#000000" })
      vim.api.nvim_set_hl(0, "LineNr",       { bg = "#000000" })
      vim.api.nvim_set_hl(0, "EndOfBuffer",  { bg = "#000000" })
      vim.api.nvim_set_hl(0, "NormalFloat",  { bg = "#000000" })

      vim.o.termguicolors = true
    end,
  },

  -- Catppuccin (installed but not applied by default)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 999,
  },

  -- Kanagawa
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = false,
    priority = 998,
    config = function()
      require("kanagawa").setup {
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,
        dimInactive = false,
        terminalColors = true,
        colors = {
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors)
          return {}
        end,
        theme = "wave", -- Load "wave" theme
        background = {
          dark = "wave",
          light = "lotus",
        },
      }
    end,
  },
}

