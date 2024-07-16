return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.prettier,
				-- require("none-ls.diagnostics.eslint_d"), --enable when you have that file in the project directory
				require("none-ls.diagnostics.cpplint"),
			},
		})

		local wk = require("which-key")

    -- old way of doing the spec, changed it for the new one
		-- wk.register({
		-- 	["<leader>bf"] = { "<cmd>lua vim.lsp.buf.format()<CR>", "Buffer format" },
		-- })

    wk.add({
      { "<leader>bf", "<cmd>lua vim.lsp.buf.format()<CR>", desc = "Buffer format" },
    })

	end,
}
