-- ------ keymap to call oil
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open Parent Directory in Oil" })

vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

vim.keymap.set("n", "<leader>cf", function()
	require("conform").format({
		lsp_format = "fallback",
	})
end, { desc = "Format current file" })

-- ----------- Map <leader>fp to open projects -----------------------
vim.keymap.set("n", "<leader>fp", ":ProjectFzf<CR>", { noremap = true, silent = true })

-- ----- Automatically copy when mouse selection ends ---------------
vim.keymap.set("v", "<LeftRelease>", '"*y', { noremap = true, silent = true })

-- ----- cut/paste from the system buffer
-- e.g. <leader>yy will yank the current line to system clipboard
vim.keymap.set("", "<leader>y", '"+y', { desc = "Yank to system clipboard" })

vim.keymap.set("", "<leader>Y", '"+y$', { desc = "Yank to EOL, to system clipboard" })

vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste after cursor from system clipboard" })

vim.keymap.set("n", "<leader>P", '"+P', { desc = "Paste before cursor from system clipboard" })

-- -----------copy/paste key maps ------------------------------------
-- ----- use "+" for system buffers

vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Replace without yanking" })

-- <leader>dd deletes the current line without copying it
vim.keymap.set("n", "<leader>d", '"_d', { desc = "Delete without yanking" })

vim.keymap.set("n", "<leader>D", '"_D', { desc = "Delete until EOL without yanking" })

vim.keymap.set("n", "<leader>c", '"_c', { desc = "Change without yanking" })

vim.keymap.set("n", "<leader>C", '"_C', { desc = "Change until EOL without yanking" })

-- <leader>yy will yank current line to system clipboard
vim.keymap.set("", "<leader>y", '"+y', { desc = "Yank to clipboard" })

vim.keymap.set("", "<leader>Y", '"+y$', { desc = "Yank until EOL to clipboard" })

vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste after cursor from clipboard" })

vim.keymap.set("n", "<leader>P", '"+P', { desc = "Paste before cursor from clipboard" })
