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
      -- vim.keymap.set("n", "h", api.node.navigate.parent_close, opts "Close Directory")
      -- vim.keymap.set("n", "l", api.node.open.edit, opts "Open")
      -- vim.keymap.set("n", "a", api.fs.create, "Create")
      -- map("d", api.fs.remove, "Delete")
      -- map("r", api.fs.rename, "Rename")
      -- Your preferred style
      vim.keymap.set("n", "h", api.node.navigate.parent_close, opts "Close Directory")
      vim.keymap.set("n", "l", api.node.open.edit, opts "Open")
      vim.keymap.set("n", "a", api.fs.create, opts "Create")
      vim.keymap.set("n", "d", api.fs.remove, opts "Delete")
      vim.keymap.set("n", "r", api.fs.rename, opts "Rename")
    end,
  },
}
