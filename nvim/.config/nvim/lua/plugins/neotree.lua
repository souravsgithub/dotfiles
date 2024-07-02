return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },

  -- this does not work for some reason
  -- stuff for relative numbers inside neotree
  -- opts = {
  --   event_handlers = {
  --     event = "neo_tree_buffer_enter",
  --     handler = function()
  --       vim.opt_local.relativenumber = true
  --     end,
  --   },
  -- },
  -- stuff for relative numbers inside neotree

  config = function()
    local wk = require("which-key")
    wk.register({
      ["<leader>e"] = { "<cmd>Neotree toggle<CR>", "Explorer"}
    })
  end
}
