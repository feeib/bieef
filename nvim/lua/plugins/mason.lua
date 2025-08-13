return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "neovim/nvim-lspconfig" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "omnisharp", "clangd" }, -- LSP для Lua і C#
				automatic_installation = true,
			})

			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Lua
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			-- C#
			lspconfig.omnisharp.setup({
				capabilities = capabilities,
			})

			-- C/CPP
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
		end
	}
}
