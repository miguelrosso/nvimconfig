local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	-- Replace the language servers listed here 
	-- with the ones you want to install
	ensure_installed = { 'clangd' },
	handlers = {
		lsp_zero.default_setup,
	},
})

lsp_zero.set_preferences({
	sign_icons = { }
})

lsp_zero.on_attach(function(client, bufnr)

	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "<leader>gn", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "<leader>gp", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>ga", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
	-- vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

end)

lsp_zero.setup()

vim.diagnostic.config {
  virtual_text = false
}
