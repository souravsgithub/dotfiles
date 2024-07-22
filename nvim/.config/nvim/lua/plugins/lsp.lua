return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "clangd", "lua_ls", "tsserver", "marksman", "jdtls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.clangd.setup({
        capabilities = capabilities,
      })
			local keymap = vim.keymap.set
			keymap("n", "K", vim.lsp.buf.hover, {})
			keymap("n", "gD", vim.lsp.buf.declaration, {})
			keymap("n", "gd", vim.lsp.buf.definition, {})
			keymap("n", "gr", vim.lsp.buf.references, {})

			local wk = require("which-key")

      -- old way of doing the spec, changed it to the new one
			-- local mappings = {
			-- 	["<leader>la"] = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
			-- 	["<leader>li"] = { "<cmd>LspInfo<CR>", "Info" },
			-- 	["<leader>lj"] = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "Next Diagnostic" },
			-- 	["<leader>lk"] = { "<cmd>lua vim.diagnostic.goto_prev()<CR>", "Prev Diagnostic" },
			-- 	["<leader>lr"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
			-- }
			-- wk.register(mappings)


      wk.add({
        { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>", desc = "Code Action" },
        { "<leader>li", "<cmd>LspInfo<CR>", desc = "Info" },
        { "<leader>lj", "<cmd>lua vim.diagnostic.goto_next()<CR>", desc = "Next Diagnostic" },
        { "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", desc = "Prev Diagnostic" },
        { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>", desc = "Rename" },
      })
		end,
	},
}
