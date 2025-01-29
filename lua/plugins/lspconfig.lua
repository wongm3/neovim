local map = vim.keymap.set

return {
	{
		"williamboman/mason.nvim",
		opts = require("configs.lspconfig").mason,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
		opts = require("configs.lspconfig").mason_lspconfig,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			local lspconfig = require("lspconfig")
			local servers = require("configs.lspconfig").servers
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			for i, v in ipairs(capabilities) do
				print(i, v)
			end

			for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup({
					capabilities = capabilities,
				})
			end

			map("n", "K", vim.lsp.buf.hover, { desc = "lsp hover" })
			map("n", "<leader>gd", vim.lsp.buf.definition, { desc = "lsp definition" })
			map("n", "<leader>gr", vim.lsp.buf.references, { desc = "lsp references" })
			map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "lsp code action" })
		end,
	},
}
