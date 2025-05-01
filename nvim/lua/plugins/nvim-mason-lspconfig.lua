return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls", --lua
				}, -- adjust as needed
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"stevearc/conform.nvim",
		},
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.clangd.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.html.setup({})
			lspconfig.cssls.setup({})
			-- lspconfig.ast_grep.setup({})
			-- Autoformatting Setup
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					c = { "clang-format" },
					html = { "prettierd" },
					css = { "prettierd" },
				},
			})

			-- autoformat on save
			vim.api.nvim_create_autocmd("BufWritePre", {
				callback = function(args)
					require("conform").format({
						bufnr = args.buf,
						lsp_fallback = true,
						quiet = true,
					})
				end,
			})
		end,
	},
}
