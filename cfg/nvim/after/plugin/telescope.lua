local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files ,{})  
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find  .git files' })
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > ")});
end)

vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { noremap = true })
vim.keymap.set("n", "ıı", "<C-^>", { noremap = true, silent = true })

