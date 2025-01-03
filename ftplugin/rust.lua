local bufnr = vim.api.nvim_get_current_buf()
local opts = { silent = true, buffer = bufnr }

vim.keymap.set("n", "<leader>d", function()
	vim.cmd.RustLsp("openDocs")
end, opts)

vim.keymap.set("n", "K", function()
	vim.cmd.RustLsp({ "hover", "actions" })
end, opts)

vim.keymap.set("n", "<leader>h", function()
	vim.cmd.RustLsp("RustEnableInlayHints")
end, opts)

vim.keymap.set("n", "<leader>j", function()
	vim.cmd.RustLsp("RustDisableInlayHints")
end, opts)

-- Rust Hinlay
--keymap("n", "<leader>h", ":RustEnableInlayHints<cr>", opts)
--keymap("n", "<leader>j", ":RustDisableInlayHints<cr>", opts)
