-- polish.lua is for small customizations, commands, autocommands, etc.
-- This will load custom LuaSnip snippets
require("luasnip.loaders.from_lua").load({
  paths = "~/.config/nvim/lua/user/snippets"
})

