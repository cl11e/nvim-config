if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      -- add more arguments for adding more treesitter parsers
    },
    on_attach = function(bufnr)
      local api = require "nvim-tree.api"

      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- Clear all default mappings first (optional but recommended)
      vim.keymap.set("n", "h", api.node.navigate.parent_close, opts "Close Directory")
      vim.keymap.set("n", "l", api.node.open.edit, opts "Open")
    end,
  },
}
