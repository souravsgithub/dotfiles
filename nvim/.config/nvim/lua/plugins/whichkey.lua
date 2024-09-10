return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {},
  config = function()
    local wk = require("which-key")
    -- local opts = {
      --   prefix = "<leader>",
      --   mode = "n"
      -- }
      -- old way of doing the specs, changed it to the new one

      -- local mappings = {
        --   q = { "<cmd>confirm q<CR>", "Quit"},
        --   h = { "<cmd>nohlsearch<CR>", "NOHL"},
        --   v = { "<cmd>vsplit<CR>", "Split"},
        --   b = { name = "Buffers" },
        --   f = { name = "Files" },
        --   d = { name = "Debug" },
        --   g = { name = "Git" },
        --   l = { name = "LSP" },
        --   p = { name = "Plugins" },
        --   t = { name = "Test" }
        -- }
        -- wk.register(mappings, opts)

        wk.add({
          { "<leader>b", group = "Buffers" },
          { "<leader>d", group = "Debug" },
          { "<leader>f", group = "Files" },
          { "<leader>g", group = "Git" },
          { "<leader>h", "<cmd>nohlsearch<CR>", desc = "NOHL" },
          { "<leader>l", group = "LSP" },
          { "<leader>p", group = "Plugins" },
          { "<leader>q", "<cmd>confirm q<CR>", desc = "Quit" },
          { "<leader>t", group = "Test" },
          { "<leader>v", "<cmd>vsplit<CR>", desc = "Split" },
        })

      end
    }
