return {
  "numToStr/Comment.nvim",
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
    event = "VeryLazy",
  },
  opts = {},
  lazy = false,
  config = function()
    local wk = require("which-key")
    wk.register {
      ["<leader>/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment" },
    }

    wk.register {
      ["<leader>/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment", mode = "v" },
    }

    vim.g.skip_ts_context_commentstring_module = true
    ---@diagnostic disable: missing-fields
    require("ts_context_commentstring").setup {
      enable_autocmd = false,
    }
    -- everything above here was also added for react and stuff
    require('Comment').setup({
      -- the below line was added for react and stuff
      pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
    })

  end
}
