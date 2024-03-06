-- mappings.lua
-- Author: Shavak Sinanan <shavak@gmail.com>

vim.api.nvim_set_keymap("c", "<Up>", 'pumvisible() ? "<Left>" : "<Up>"', { expr = true, noremap = true })
vim.api.nvim_set_keymap("c", "<Down>", 'pumvisible() ? "<Right>" : "<Down>"', { expr = true, noremap = true })
vim.api.nvim_set_keymap("c", "<Left>", 'pumvisible() ? "<Up>" : "<Left>"', { expr = true, noremap = true })
vim.api.nvim_set_keymap("c", "<Right>", 'pumvisible() ? "<Down>" : "<Right>"', { expr = true, noremap = true })
vim.keymap.set("c", "<CR>", function()
	if vim.fn.pumvisible() == 1 then
		return "<C-y>"
	end
	return "<CR>"
end, { expr = true, noremap = true })
