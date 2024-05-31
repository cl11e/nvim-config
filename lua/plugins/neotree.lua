return {
{
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.filesystem = vim.tbl_deep_extend("force", opts.filesystem, {
      window = {
        mappings = {
          ["o"] = "open",
        },
      },
    })
    end,
  },
}


